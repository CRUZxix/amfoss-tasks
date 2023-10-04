package main

import (
	"fmt"
	"math"
	"strconv"
)

func isPrime(num int) bool {
	if num < 2 {
		return false
	}
	for i := 2; i <= int(math.Sqrt(float64(num))); i++ {
		if num%i == 0 {
			return false
		}
	}
	return true
}

func main() {
	var input string
	fmt.Print("Enter a number (n): ")
	fmt.Scanln(&input)

	n, err := strconv.Atoi(input)
	if err != nil || n < 2 {
		fmt.Println("Prime numbers start from 2 and above.")
		return
	}

	fmt.Printf("Prime numbers up to %d:\n", n)
	for i := 2; i <= n; i++ {
		if isPrime(i) {
			fmt.Println(i)
		}
	}
}
