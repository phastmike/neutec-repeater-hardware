#include <stdio.h>
#include <math.h>

/* Capacitor is constant 100nF */
#define CAPACITOR	100 * pow (10, -9)
/* Capacitor is constant 1uF */
#define CAPACITOR_1u	1 * pow (10, -6)

double ctcss_tones[] = {67.0, 69.3, 71.9, 74.4, 77.0, 79.7, 82.5, 85.4, 88.5,
   91.5, 94.8, 97.4, 100.0, 103.5, 107.2, 110.9, 114.8, 118.8, 123.0, 127.3,
   131.8, 136.5, 141.3, 146.2, 151.4, 156.7, 159.8, 162.2, 165.5, 167.9, 171.3,
   173.8, 177.3, 179.9, 183.5, 186.2, 189.9, 192.8, 196.6, 199.5, 203.5, 206.5,
   210.7, 218.1, 225.7, 229.1, 233.6, 241.8, 250.3, 254.1};


double get_frequency (double resistance, double capacity) {
   return  1/(1.1*resistance*capacity);
}

double get_resistance (double frequency, double capacity) {
   return  1/(1.1*capacity*frequency);
}


int main (int argc, char *argv[]) {
   int i;
   int n = sizeof(ctcss_tones) / sizeof(double);

   printf("\n");
   printf("                   NE567 Tone Encoder\n");
   printf("\n");
   printf("          Resistor values for 100nF Capacitor\n");
   printf("     Valores de Resistencia para condensador de 100nF\n");
   printf("\n");

   printf("|----------|--------------|   |----------|--------------|\n");
   for (i = 0; i < n; i++) {
      printf("| %5.1f Hz | %7.3f kOhm |", ctcss_tones[i], get_resistance(ctcss_tones[i], CAPACITOR)/1000.0);
      if (i%2) {
         printf("\n");
      } else {
         printf ("   ");
      }
   }
   printf("|----------|--------------|   |----------|--------------|\n");

   return 1;
}

