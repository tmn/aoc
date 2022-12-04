use std::path::PathBuf;

pub mod day01;
pub mod day02;
pub mod day03;

pub fn read_input(day: u8) -> String {
    let cwd: PathBuf = std::env::current_dir().unwrap();
    let filename: PathBuf = cwd.join("inputs").join(format!("day{:02}.txt", day));

    std::fs::read_to_string(filename).expect("File not found")
}
