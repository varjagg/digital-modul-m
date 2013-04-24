// teensy++ code to control DIGITAL MODUL M:
// a custom digital back for Leica M based on Canon EOS 350D

#include <Bounce.h>

int buttons[5]={10, 11, 12, 13, 14};
Bounce *buttons_deb[5];


void setup() {
  for(int i=0; i<5; i++) {
    pinMode(buttons[i], INPUT_PULLUP);
    buttons_deb[i] = new Bounce(buttons[i], 10);
  }
}

void loop() {
  
}
