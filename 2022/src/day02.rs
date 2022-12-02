fn part1(value: &str) -> i32 {
    match value {
        "A X" => 4,
        "A Y" => 8,
        "A Z" => 3,
        "B X" => 1,
        "B Y" => 5,
        "B Z" => 9,
        "C X" => 7,
        "C Y" => 2,
        "C Z" => 6,
        &_ => 0,
    }
}

fn part2(value: &str) -> i32 {
    match value {
        "A X" => 3,
        "A Y" => 4,
        "A Z" => 8,
        "B X" => 1,
        "B Y" => 5,
        "B Z" => 9,
        "C X" => 2,
        "C Y" => 6,
        "C Z" => 7,
        &_ => 0,
    }
}

pub fn run(input: &str) -> String {
    let mut score_part1: i32 = 0;
    let mut score_part2: i32 = 0;

    for line in input.lines() {
        score_part1 += part1(line);
        score_part2 += part2(line);
    }

    format!("part1: {:?}\npart2: {:?}", score_part1, score_part2)
}
