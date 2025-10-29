#include <stdio.h>

extern unsigned long long factorial(unsigned long long n);

int main() {
    unsigned long long n;
    printf("Enter a number: ");
    scanf("%llu", &n);

    unsigned long long result = factorial(n);
    printf("Factorial of %llu is %llu\n", n, result);
    return 0;
}
