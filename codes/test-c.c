#include <math.h>
#include <time.h>
#include <time.h>
#include <stdio.h>
#include <conio.h>
#include <windows.h>
#include <stdint.h>

#define NUM_ITERATIONS 100000000
#define AMOUNT 10

double microtime() {
    time_t t;
    struct tm* tm_info;

    time(&t);
    tm_info = gmtime(&t);

    double epochMillis = (t);
    return epochMillis;
}

double compute() {
    double sum = 0.0;
    for (int i = 0; i < NUM_ITERATIONS; i++) {
        sum += (sin(i) * cos(i)) / (microtime() * 1000);
    }
    return sum;
}

int main() {
    double media = 0;
    for(int i=0; i<AMOUNT; i++){
        clock_t start = clock();
        double result = compute();
        clock_t end = clock();
        double time_spent = (double)(end - start) / CLOCKS_PER_SEC;
        media += time_spent;
        printf("Time spent %i: %f seconds\n", i+1, time_spent);
    }
    printf("Average: %f\n", media/AMOUNT);
    printf("Total: %f", media);
    getch();
    return 0;
}
