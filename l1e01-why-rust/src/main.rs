fn main() {
    let reference_to_nothing = dangle();
}

// --- code card (exactly as shown on screen) ---
fn dangle() -> &String {
    let s = String::from("hello");
    &s
} // s is dropped here
