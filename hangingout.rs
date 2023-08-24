use std::io::stdin;

fn main() {
    let mut lx = String::new();
    stdin().read_line(&mut lx).unwrap();
    let mut input_iter = lx.split_whitespace();
    let y: i32 = input_iter.next().expect("Expected integer").parse().unwrap();
    let lines = stdin()
        .lines()
        .map(|l| l.unwrap());
    let mut n = 0;
    let mut m = 0;
    for line in lines {
        match line.split(" ").collect::<Vec<_>>().as_slice() {
            ["enter", x] if n+x.parse::<i32>().unwrap() <= y => n += x.parse::<i32>().unwrap(),
            ["enter", _] => m+=1,
            ["leave", x] => n -= x.parse::<i32>().unwrap(),
            _ => (),
        }
    }
    println!("{}",m);
}
