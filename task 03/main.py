def pri(n):
    if n < 2:
        return False
    for i in range(2, int(n**0.5) + 1):
        if n% i == 0:
            return False
    return True

try:
    n = int(input("Enter the number  "))
    print("Prime numbers up to the number is :")
    for i in range(2, n + 1):
        if pri(i):
            print(i)
except ValError:
    print("error")