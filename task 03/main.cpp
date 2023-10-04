#include <iostream>
#include <cmath>

int isPrime(int num) {
    if (num < 2) return 0; 
    for (int i = 2; i * i <= num; i++) {
        if (num % i == 0) return 0; 
    }
    return 1; 
}

int main() {
    int n;

    std::cout << "Enter a number (n): ";
    std::cin >> n;

    if (n < 2) {
        std::cout << "Prime numbers start from 2 and above." << std::endl;
    } else {
        std::cout << "Prime numbers up to " << n << ":" << std::endl;
        for (int i = 2; i <= n; i++) {
            if (isPrime(i)) {
                std::cout << i << std::endl;
            }
        }
    }

    return 0;
}
