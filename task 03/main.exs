defmodule PrimeFinder do
  def is_prime(num) when num < 2, do: false
  def is_prime(2), do: true
  def is_prime(num) do
    Enum.none?(2..trunc(:math.sqrt(num)), fn i -> rem(num, i) == 0 end)
  end

  def find_primes_up_to_n(n) when n < 2, do: []
  def find_primes_up_to_n(n) do
    Enum.filter(2..n, &is_prime/1)
  end
end

IO.puts("Enter a number (n): ")
input = IO.gets("")

case String.to_integer(input) do
  {:ok, n} when n >= 2 ->
    IO.puts("Prime numbers up to #{n}:")
    Enum.each(PrimeFinder.find_primes_up_to_n(n), &IO.puts(&1))
  _ ->
    IO.puts("Prime numbers start from 2 and above.")
end
