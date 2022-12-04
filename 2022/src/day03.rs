fn score(c: char) -> u8 {
    match c as u8 {
        b'a'..=b'z' => c as u8 - b'a' + 1,
        b'A'..=b'Z' => c as u8 - b'A' + 27,
        _ => 0,
    }
}

fn part2(input: &str) -> usize {
    input.trim().split('\n').collect::<Vec<&str>>().chunks(3).map(|i| {
        let mut a: Vec<char> = i[0].chars().collect();
        a.retain(|x| i[1].chars().any(|z| x == &z));
        a.retain(|x| i[2].chars().any(|z| x == &z));
        score(a[0]) as usize
    }).sum()
}

fn part1(input: &str) -> usize {
    input.lines().map(|line| {
        let (split1, split2) = line.split_at(line.len() / 2);
        let mut a: Vec<char> = split1.chars().collect();
        a.retain(|x| split2.chars().any(|z| x == &z));
        score(a[0]) as usize
    }).sum()
}

pub fn run(input: &str) -> String {
    format!("part1: {}\npart2: {}", part1(input), part2(input))
}
