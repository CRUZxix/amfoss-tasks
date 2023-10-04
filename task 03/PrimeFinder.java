import java.util.Scanner;

public class PrimeFinder {
    public static boolean isPrime(int num) {
        if (num < 2) return false;
        for (int i = 2; i <= Math.sqrt(num); i++) {
            if (num % i == 0) return false;
        }
        return true;
    }


    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter a number (n): ");
        
        if (scanner.hasNextInt()) {
            int n = scanner.nextInt();
            if (n >= 2) {
                System.out.println("Prime numbers up to " + n + ":");
                for (int i = 2; i <= n; i++) {
                    if (isPrime(i)) {
                        System.out.println(i);
                    }
                }
            } else {
                System.out.println("Prime numbers start from 2 and above.");
            }
        } else {
            System.out.println("Invalid input. Please enter a valid number.");
        }
        
        scanner.close();
    }
}
