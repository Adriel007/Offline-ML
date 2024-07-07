#include <math.h>
#include <time.h>
#include <sys/time.h>

#define NUM_ITERATIONS 100000000

double microtime(int usec)
{
    struct timeval tv;
    gettimeofday(&tv, NULL);
    return (double)tv.tv_sec * 1000.0 + (double)tv.tv_usec / 1000.0;
}

double compute()
{
    double sum = 0.0;
    for (int i = 0; i < NUM_ITERATIONS; i++)
    {
        sum += (sin(i) * cos(i)) / (microtime(0) * 1000);
    }
    return sum;
}

int main()
{
    compute();
    return 0;
}
