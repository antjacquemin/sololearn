def pi(dec):
    i, q, r, t, k, n, l = 0, 1, 0, 1, 1, 3, 3
    while True:
        if 4 * q + r - t < n * t:
            if i == dec:
                break
            nr = 10 * (r - n * t)
            n = 10 * (3 * q + r) // t - 10 * n
            q *= 10
            r = nr
            i += 1
        else:
            nr = (2 * q + r) * l
            nn = (q * 7 * k + 2 + r * l) // (t*l)
            q *= k
            t *= l
            l += 2
            k += 1
            n = nn
            r = nr
    return n

print(pi(int(input())))