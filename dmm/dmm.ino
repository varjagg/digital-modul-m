// teensy++ code to control DIGITAL MODUL M:
// a custom digital back for film Leica M bodies based on Canon EOS 350D

#include <Bounce.h>

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

// we drive the amputated 350D buttons from output pins
#define BTN_ISO 23
#define BTN_UP  22
#define BTN_DN  21
#define BTN_SET 20

#define ISO_ADDR 0

int isopos;

int buttons[5]={10, 11, 12, 13, 14};
Bounce *buttons_deb[5];
Bounce shutter = Bounce(IN_SHUTTER, 10);

// ISO selection button sequence
void iso_seq(int pos) {
  int dist, dir;
 digitalWrite(BTN_ISO, HIGH);
 delay(50);
 digitalWrite(BTN_ISO, LOW);
 
 dist = pos - isopos;
 dir = (dist >= 0 ? 1 : -1);
 // drive the cursor to required position
 for(dist = pos - isopos; pos != isopos; dist += dir) {
   digitalWrite((dir > 0 ? BTN_DN : BTN_UP), HIGH);
   delay(50);
   digitalWrite((dir > 0 ? BTN_DN : BTN_UP), LOW); 
   delay(50);
 }
 
 digitalWrite(BTN_SET, HIGH);
 delay(50);
 digitalWrite(BTN_SET, LOW);

 EEPROM.write(ISO_ADDR, pos);
}

// camera firing sequence
void shoot() {
  digitalWrite(BTN_SHUTTER, HIGH);
  while(!shutter.update())
    delay(50);
  digitalWrite(BTN_SHUTTER, LOW);
}

void setup() {
  int i;

  Serial.begin(9600);
  
  isopos = EEPROM.read(ISO_ADDR);

  //shutter release button
  pinMode(IN_SHUTTER, INPUT_PULLUP);
  
  // set up the inputs from ISO knob
  for(i = 0; i < 5; i++) {
    pinMode(buttons[i], INPUT_PULLUP);
    buttons_deb[i] = new Bounce(buttons[i], 10);
  }
  
  pinMode(BTN_SHUTTER, OUTPUT);
  pinMode(BTN_ISO, OUTPUT);
  pinMode(BTN_UP, OUTPUT);
  pinMode(BTN_DN, OUTPUT);
  pinMode(BTN_SET, OUTPUT);
  
  // press SET 6 times in case Canon's CMOS was reset
  for( i = 0; i < 6; i++) {
    digitalWrite(BTN_SET, HIGH);
    delay(KEYDAB);
    digitalWrite(BTN_SET, LOW);
    delay(KEYDAB);
  }
}

void loop() {
  
  // fire the shutter if necessary
  if(shutter.update() && shutter.fallingEdge())
    shoot();
    
  // detect ISO knob action
  for(int i = 0; i < 5; i++) {
   if(buttons_deb[i]->update() && buttons_deb[i]->read() == LOW) {
     iso_seq(i);
   }
  }
}

