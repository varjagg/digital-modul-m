// Arduino Pro Mini code to control DIGITAL MODUL M:
// a custom digital back for film Leica M bodies based on Canon EOS 350D
#include <Bounce.h>
#include <EEPROM.h>

// we use a 4 position selector knob, mapped to 4 inputs, to select camera ISO
#define ISO_100  0
#define ISO_200  1
#define ISO_400  2
#define ISO_800  3

// TODO: playback and zoom-in 100% while this button is held
#define IN_FAP 0

#define IN_SHUTTER 1
#define BTN_SHUTTER 3
#define BTN_PRERELEASE 2

// we drive the amputated 350D buttons from output pins
#define BTN_ISO 8
#define BTN_UP  8
#define BTN_DN  9
#define BTN_SET 10
#define BTN_PLAY 11
#define BTN_ZOOM_IN 12

// we simulate the shutter curtain and mirror position sensors for the Canon
#define SW_SHUTTER_CURTAIN1 A0
#define SW_SHUTTER_CURTAIN2 A1
#define SW_MIRROR_UP A2
#define SW_MIRROR_DOWN A3

#define ISO_ADDR 0

int isopos;

int buttons[4]={
  4, 5, 6, 7};
Bounce *buttons_deb[4];

Bounce button_fap = Bounce(IN_FAP, 15);

// blink the led once
void blink() {
  digitalWrite(13, HIGH);
  delay(100);
  digitalWrite(13, LOW);
  delay(100);
}

// simulate a keypress action
void click(int pin) {
  digitalWrite(pin, HIGH);
  delay(20);
  digitalWrite(pin, LOW);
  delay(20);
}

//zoom in the image to 100% center
void pixelpeep() {
  click(BTN_PLAY);
  click(BTN_ZOOM_IN);
  click(BTN_ZOOM_IN);
  click(BTN_ZOOM_IN);
  click(BTN_ZOOM_IN);
  click(BTN_ZOOM_IN);
  click(BTN_ZOOM_IN);
  click(BTN_ZOOM_IN);
  click(BTN_ZOOM_IN);
}

// ISO selection button sequence
void iso_seq(int pos) {
  int dist, dir;
  click(BTN_ISO);

   for(int i = 0; i <=isopos; i++)
    blink();

  dist = pos - isopos;
  dir = (dist >= 0 ? 1 : -1);
  // drive the cursor to required position
  for(; pos != isopos; isopos += dir) {
    click(dir > 0 ? BTN_DN : BTN_UP);
  }
  click(BTN_SET);

  EEPROM.write(ISO_ADDR, isopos);
}

// camera firing sequence
void shoot() {

  digitalWrite(13, HIGH); //LED on
  digitalWrite(BTN_SHUTTER, HIGH);
  delay(25); // minimum trigger time

  digitalWrite(SW_MIRROR_DOWN, LOW);
  delay(10);
  digitalWrite(SW_MIRROR_UP, HIGH);
  digitalWrite(SW_SHUTTER_CURTAIN1, HIGH);
  //Set mirror up and fire the 1st curtain
  delay(500); // Canon's shutter is set to 1/2 sec
  digitalWrite(SW_SHUTTER_CURTAIN2, HIGH);
  delay(10);
  digitalWrite(SW_MIRROR_UP, LOW);
  delay(80);
  digitalWrite(SW_SHUTTER_CURTAIN1, LOW);
  digitalWrite(SW_SHUTTER_CURTAIN2, LOW);
  digitalWrite(SW_MIRROR_DOWN, HIGH);

  digitalWrite(BTN_SHUTTER, LOW);
  digitalWrite(BTN_PRERELEASE, LOW);

  digitalWrite(13, LOW); //LED off

}

void setup() {
  int i;
  pinMode(13, OUTPUT);
  digitalWrite(13, LOW);

  EEPROM.write(ISO_ADDR, 0);

  isopos = EEPROM.read(ISO_ADDR);

  // shutter release button
  pinMode(IN_SHUTTER, INPUT_PULLUP);
  
  // fap button
  pinMode(IN_FAP, INPUT_PULLUP);
  
  // set up the inputs from ISO knob
  for(i = 0; i < 4; i++) {
    pinMode(buttons[i], INPUT_PULLUP);
    buttons_deb[i] = new Bounce(buttons[i], 200);
  }

  pinMode(BTN_SHUTTER, OUTPUT);
  pinMode(BTN_PRERELEASE, OUTPUT);
  pinMode(BTN_ISO, OUTPUT);
  pinMode(BTN_UP, OUTPUT);
  pinMode(BTN_DN, OUTPUT);
  pinMode(BTN_SET, OUTPUT);

  digitalWrite(SW_SHUTTER_CURTAIN1, LOW);
  digitalWrite(SW_SHUTTER_CURTAIN2, LOW);
  pinMode(SW_SHUTTER_CURTAIN1, OUTPUT);
  pinMode(SW_SHUTTER_CURTAIN2, OUTPUT);
  digitalWrite(SW_MIRROR_DOWN, HIGH);
  digitalWrite(SW_MIRROR_UP, LOW);
  pinMode(SW_MIRROR_UP, OUTPUT);
  pinMode(SW_MIRROR_DOWN, OUTPUT);


  // delay to let the camera warm up
  delay(250);
  // press SET 6 times in case Canon's CMOS was reset
  for( i = 0; i < 6; i++) {
    click(BTN_SET);
  }
  delay(30);
  digitalWrite(BTN_PRERELEASE, HIGH);

}

void loop() {
  int i, iso_changed;
  
  // fire the shutter if necessary
  if(digitalRead(IN_SHUTTER) == LOW)
    shoot();

  // detect ISO knob action
  iso_changed = 0;
  for(i = 0; i < 4; i++) {
    if(buttons_deb[i]->update()) {
       iso_changed = 1;
       if(buttons_deb[i]->fallingEdge()) {
        iso_seq(i);
        break;
       }
    }
  }
  if(iso_changed && i == 4)
     iso_seq(4);
     
  if(button_fap.update() && button_fap.fallingEdge()) {
    blink();
    pixelpeep();
  }
}


