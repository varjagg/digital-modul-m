// teensy++ code to control DIGITAL MODUL M:
// a custom digital back for Leica M based on Canon EOS 350D

#include <Bounce.h>

// we use a 5 position selector knob, mapped to 5 inputs, to select camera ISO

#define ISO_100  0
#define ISO_200  1
#define ISO_400  2
#define ISO_800  3
#define ISO_1600 4

#define BTN_SHUTTER 24

// we drive the amputated 350D buttons from output pins
#define BTN_ISO 23
#define BTN_UP  22
#define BTN_DN  21
#define BTN_SET 20

int buttons[5]={10, 11, 12, 13, 14};
Bounce *buttons_deb[5];

// ISO selection button sequence
void iso_seq(int pos) {
 int i;
 digitalWrite(BTN_ISO, HIGH);
 delay(50);
 digitalWrite(BTN_ISO, LOW);
 
 // naiive but fool-proof and power-independent algorithm
 // can be optimized for faster operation via storing the current ISO
 
 // drive the cursor home
 for(i = 0; i < 4; i++) {
   digitalWrite(BTN_UP, HIGH);
   delay(50);
   digitalWrite(BTN_UP, LOW); 
   delay(50);
 }
 
 // set the supplied ISO
 for(i = 0; i < pos; i++) {
   digitalWrite(BTN_DN, HIGH);
   delay(50);
   digitalWrite(BTN_DN, LOW); 
   delay(50);
 }
 digitalWrite(BTN_SET, HIGH);
 delay(50);
 digitalWrite(BTN_SET, LOW);
 
}

void setup() {
  //shutter release button
  pinMode(BTN_SHUTTER, INPUT_PULLUP);
  
  // set up the inputs from ISO knob
  for(int i=0; i<5; i++) {
    pinMode(buttons[i], INPUT_PULLUP);
    buttons_deb[i] = new Bounce(buttons[i], 10);
  }
  
  pinMode(BTN_ISO, OUTPUT);
  pinMode(BTN_UP, OUTPUT);
  pinMode(BTN_DN, OUTPUT);
  pinMode(BTN_SET, OUTPUT);
}

void loop() {
  
}
