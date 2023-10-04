function isPrime(num) {
  if (num < 2) return false;
  for (let i = 2; i <= Math.sqrt(num); i++) {
    if (num % i === 0) return false;
  }
  return true;
}

const readline = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout
});

readline.question("Enter a number (n): ", (input) => {
  const n = parseInt(input);
  if (isNaN(n) || n < 2) {
    console.log("Prime numbers start from 2 and above.");
  } else {
    console.log(`Prime numbers up to ${n}:`);
    for (let i = 2; i <= n; i++) {
      if (isPrime(i)) {
        console.log(i);
      }
    }
  }
  readline.close();
});
