echo "Compiling the project..."

gcc -o my_program main.c utils.c -Iinclude
cargo run --release

echo "Launched!"