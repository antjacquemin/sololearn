c, m, y, k = (float(input()) for _ in range(4))
r, g, b = (str(round(255 * (1 - i) * (1 - k))) for i in (c, m, y))
print(",".join((r, g, b)))