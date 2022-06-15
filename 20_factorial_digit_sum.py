def fact(n):
    if n <= 1:
        return 1
    return n*fact(n-1)

def main():
    print(sum(int(x) for x in str(fact(100))))


if __name__ == "__main__":
    main()