use aoc::*;

macro_rules! run_day {
    ($day:path, $input:expr) => {{
        use $day::*;
        println!("\x1b[1mDay: {:?}\x1b[0m", stringify!($day));
        println!("{}", run($input));
        println!("--------------------------------------------------------------------------------");
    }};
}

fn main() {
    run_day!(day01, &read_input(01));
    run_day!(day02, &read_input(02));
}
