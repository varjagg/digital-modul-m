// teensy++ code to control DIGITAL MODUL M:
// a custom digital back for film Leica M bodies based on Canon EOS 350D

#include <Bounce.h>
#include <EEPROM.h>

// we use a 5 position selector knob, mapped to 5 inputs, to select camera ISO
#define ISO_100  0
#define ISO_200  1
#define ISO_400  2
#define ISO_800  3
#define ISO_1600 4

// TODO: playback and zoom-in 100% while this button is held
#define IN_FAP 25

#define IN_SHUTTER 24
#define BTN_SHUTTER 26
#define BTN_PRERELEASE 23

// we drive the amputated 350D buttons from output pins
#define BTN_ISO 22
#define BTN_UP  22
#define BTN_DN  21
#define BTN_SET 20

// we simulate the shutter curtain and mirror position sensors for the Canon
#define SW_SHUTTER_CURTAIN1 1
#define SW_SHUTTER_CURTAIN2 2
#define SW_MIRROR_UP 3
#define SW_MIRROR_DOWN 4

#define ISO_ADDR 0

int isopos;

int buttons[5]={
  10, 11, 12, 13, 14};
Bounce *buttons_deb[5];

// simulate a keypress action
void click(int pin) {
  digitalWrite(pin, HIGH);
  delay(20);
  digitalWrite(pin, LOW);
  delay(20);
}

// ISO selection button sequence
void iso_seq(int pos) {
  int dist, dir;
  click(BTN_ISO);

  dist = pos - isopos;
  dir = (dist >= 0 ? 1 : -1);
  // drive the cursor to required position
  for(; pos != isopos; pos += dir) {
    click(dir > 0 ? BTN_DN : BTN_UP);
  }

  click(BTN_SET);

  EEPROM.write(ISO_ADDR, pos);
}

// camera firing sequence
void shoot() {
  digitalWrite(6, LOW); //LED on
  digitalWrite(BTN_SHUTTER, HIGH);
  delay(15); // minimum trigger time
  Serial.println("pew");
  digitalWrite(SW_MIRROR_DOWN, LOW);
  digitalWrite(SW_MIRROR_UP, HIGH);
  digitalWrite(SW_SHUTTER_CURTAIN1, HIGH);
  //Set mirror up and fire the 1st curtain
  delay(500); // Canon's shutter is set to 1/2 sec
  digitalWrite(SW_SHUTTER_CURTAIN2, HIGH);
  delay(10);
  digitalWrite(SW_MIRROR_UP, LOW);
  delay(200);
  digitalWrite(SW_MIRROR_DOWN, HIGH);
  delay(20);
  digitalWrite(SW_SHUTTER_CURTAIN1, LOW);
  digitalWrite(SW_SHUTTER_CURTAIN2, LOW);

  digitalWrite(BTN_SHUTTER, LOW);
  digitalWrite(6, HIGH); //LED off

}

void setup() {
  int i;
  pinMode(6, OUTPUT);
  digitalWrite(6, HIGH);
  Serial.begin(9600);
  Serial.println("Init...");

  isopos = EEPROM.read(ISO_ADDR);

  //shutter release button
  pinMode(IN_SHUTTER, INPUT_PULLUP);

  // set up the inputs from ISO knob
  for(i = 0; i < 5; i++) {
    pinMode(buttons[i], INPUT_PULLUP);
    buttons_deb[i] = new Bounce(buttons[i], 10);
  }

  pinMode(BTN_SHUTTER, OUTPUT);
  pinMode(BTN_PRERELEASE, OUTPUT);
  pinMode(BTN_ISO, OUTPUT);
  pinMode(BTN_UP, OUTPUT);
  pinMode(BTN_DN, OUTPUT);
  pinMode(BTN_SET, OUTPUT);

  pinMode(SW_SHUTTER_CURTAIN1, OUTPUT);
  pinMode(SW_SHUTTER_CURTAIN2, OUTPUT);
  digitalWrite(SW_MIRROR_DOWN, HIGH);
  pinMode(SW_MIRROR_UP, OUTPUT);
  pinMode(SW_MIRROR_DOWN, OUTPUT);


  // press SET 6 times in case Canon's CMOS was reset
  for( i = 0; i < 6; i++) {
    click(BTN_SET);
  }
  delay(30);
  digitalWrite(BTN_PRERELEASE, HIGH);
  Serial.println("Initialized");

}

void loop() {

  // fire the shutter if necessary
  if(digitalRead(IN_SHUTTER) == LOW)
    shoot();

  // detect ISO knob action
  for(int i = 0; i < 5; i++) {
    if(buttons_deb[i]->update() && buttons_deb[i]->read() == LOW) {
      iso_seq(i);
    }
  }
}


