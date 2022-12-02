pub fn run(input: &str) -> String {
    let mut v: Vec<i32> = input
        .split("\n\n")
        .map(|x| x.lines().map(|n| n.parse::<i32>().unwrap()).sum())
        .collect();
    v.sort_by(|a, b| b.cmp(a));

    format!(
        "part1: {:?}\npart2: {:?}",
        v.iter().max().unwrap(),
        v.iter().take(3).sum::<i32>()
    )
}
