def seive(n: int):
    seive_list = list(range(2, n+1))
    i = 0
    seive_len = len(seive_list)
    while i < seive_len:
        for j in range(i+seive_list[i], seive_len, seive_list[i]):
            seive_list[j] = -1
        if seive_list[i] != -1:
            yield seive_list[i]
        i += 1


def main():
    primes = seive(2_000_000)
    prime_sum = sum(primes)
    print(prime_sum)


if __name__ == "__main__":
    main()
