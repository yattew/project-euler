from copy import deepcopy


def fifth_powers():
    l = [(i, i**5) for i in range(0, 10)]
    return l


def selections(l):
    if len(l) == 2:
        return []
    res = []
    for i in range(len(l)):
        item = l.pop(i)
        l_new = deepcopy(l)
        res.append(l_new)
        rest_s = selections(l_new)
        res.extend(rest_s)
        l.insert(i, item)
    return res


def main():
    arr = selections(fifth_powers())
    s = 0
    for i in arr:
        arr_temp = i
        n = ""
        nf = 0
        for j in arr_temp:
            n+=str(j[0])
            nf+=j[1]
        if nf == int(n):
            s+=nf
    print(s)


if __name__ == "__main__":
    main()
