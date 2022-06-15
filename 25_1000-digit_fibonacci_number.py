def main():
    prev, curr = 0, 1
    ct = 1
    while True:
        if len(str(curr)) == 1000:
            print(ct)
            break
        prev, curr = curr, prev+curr
        ct+=1


if __name__ == "__main__":
    main()
