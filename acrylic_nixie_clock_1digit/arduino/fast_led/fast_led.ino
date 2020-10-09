#include "FastLED.h"

FASTLED_USING_NAMESPACE
#if FASTLED_VERSION < 3001000
#error "Requires FastLED 3.1 or later; check github for latest code."
#endif

#define DATA_PIN    4
#define LED_TYPE    WS2812
#define COLOR_ORDER GRB
#define HEIGHT 1
#define WIDTH 60
#define NUM_LEDS HEIGHT*WIDTH
CRGB leds[NUM_LEDS];
#define BRIGHTNESS          1
#define FRAMES_PER_SECOND  60
int analogPin = 5;
int val = 0;

void setup() {

  delay(3000); // 3 second delay for recovery
  // tell FastLED about the LED strip configuration
  FastLED.addLeds<LED_TYPE, DATA_PIN, COLOR_ORDER>(leds, NUM_LEDS).setCorrection(TypicalLEDStrip);
  //FastLED.addLeds<LED_TYPE,DATA_PIN,CLK_PIN,COLOR_ORDER>(leds, NUM_LEDS).setCorrection(TypicalLEDStrip);
  // set master brightness control
  FastLED.setBrightness( 0);
  
  for (int i = 0; i <60 ; i++) {
    leds[i] = CHSV( 0, 0, 0);
  }
}


uint8_t ct = 0;
int16_t color = 0;
uint8_t brightness = 0;

int16_t center=20;
int16_t start=0;
int16_t finish=0;

uint8_t num;
uint8_t range_min = 0;
uint8_t range_max = 60;

void loop()
{
  ct+=1;
  if (ct>=10){
    ct=0;
    center = random(range_min, range_max);
    color = random(0,255);
  }

  start  = center - int(ct);
  finish = center + int(ct);
  for (int i = start; i <finish ; i++) {
    num = i;
    if (num<range_min)num = range_min;
    if (num>range_max)num = range_max;
    leds[num] = CHSV( color, 255, 255);
  }

  FastLED.setBrightness(255);
  FastLED.show();
  FastLED.delay(1000 / FRAMES_PER_SECOND);

  EVERY_N_MILLISECONDS( 800 ) {}
}
