def main():
    a = list(range(2,101))
    a = [[x**y for x in a] for y in a]
    res = []
    for i in a:
        res.extend(i)
    res = len(set(res))
    print(res)

if __name__ == "__main__":
    main()