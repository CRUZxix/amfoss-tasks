use std::io;

fn main() {
    println!("Enter a number (n):");
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Failed to read line");
    let n: u64 = input.trim().parse().expect("Invalid input. Please enter a valid number.");

    if n < 2 {
        println!("Prime numbers start from 2 and above.");
        return;
    }

    println!("Prime numbers up to {}:", n);
    for i in 2..=n {
        let mut is_prime = true;
        for j in 2..(i as f64).sqrt() as u64 + 1 {
            if i % j == 0 {
                is_prime = false;
                break;
            }
        }
        if is_prime {
            println!("{}", i);
        }
    }
}
