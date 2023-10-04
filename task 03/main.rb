def pri(n)
  return false if n < 2
  (2..Math.sqrt(n).to_i).none? { |i| n % i == 0 }
end

begin
  print "Enter a number  "
  n = gets.chomp.to_i

  if n < 2
    puts "Prime numbers start from 2"
  else
    puts "Prime numbers up to the number"
    (2..n).each { |i| puts i if pri(i) }
  end
rescue ArgumentError
  puts "invalid."
end

