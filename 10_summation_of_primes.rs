fn primes_till(n: u32) -> Vec<u32> {
    let mut seive = (2..=n).collect::<Vec<u32>>();
    let mut res = Vec::<u32>::new();
    let mut it = 0;
    while it < seive.len() {
        let el = seive[it] as usize;
        let mut it_t = it + el;
        while it_t < seive.len() {
            seive[it_t] = 0;
            it_t += el;
        }
        it += 1;
        while it < seive.len() && seive[it] == 0 {
            it += 1;
        }
    }
    for i in &seive {
        if *i != 0 {
            res.push(*i);
        }
    }
    return res;
}

fn main() {
    let res = primes_till(2_000_000);
    let mut s: u128 = 0;
    for i in res {
        s += i as u128;
    }
    println!("{}", s);
}
