prices = map(float, input.split())
maxUSD = max(prices) * 1.1
if (maxUSD > 20):
    print("Back to the store")
else:
    print("On to the terminal")