#include <stdio.h>
#include <math.h>

/* Capacitor is constant 100nF */
#define CAPACITOR	47 * pow (10, -6)

double tot_values[] = {60, 90, 120, 135, 150, 165, 180};

double get_time (double resistance, double capacity) {
   return  (1.1*resistance*capacity);
}

double get_resistance (double time, double capacity) {
   return  time/(1.1*capacity);
}


int main (int argc, char *argv[]) {
   int i;
   int n = sizeof(tot_values) / sizeof(double);

   printf("\n");
   printf("                   NE555 TimeoutTimer\n");
   printf("\n");
   printf("          Resistor values for 47uF Capacitor\n");
   printf("     Valores de Resistencia para condensador de 47uF\n");
   printf("\n");

   printf("|---------|--------------|   |---------|--------------|\n");
   for (i = 0; i < n; i++) {
      printf("| %5.1f s | %7.3f MOhm |", tot_values[i], get_resistance(tot_values[i], CAPACITOR)/(pow(10,6)));
      if (i%2) {
         printf("\n");
      } else {
         printf ("   ");
      }
   }
   printf("|---------|--------------|\n|---------|--------------|\n");

   return 1;
}

