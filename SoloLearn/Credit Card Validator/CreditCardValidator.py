def luhn(cardnumber):
    digits = list(map(int, cardnumber[::-1]))
    digits = [2 * n if i % 2 == 1 else n for i, n in enumerate(digits)]
    digits = [n - 9 if n > 9 else n for n in digits]
    return sum(digits) % 10 == 0

cardnumber = input()
if len(cardnumber) == 16 and luhn(cardnumber):
    print("valid")
else:
    print("not valid")