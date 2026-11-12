# Level 1 · Ep 1 — Why does Rust exist?

📖 The Rust Book: [Introduction](https://doc.rust-lang.org/book/ch00-00-introduction.html) · [4.1 What Is Ownership?](https://doc.rust-lang.org/book/ch04-01-what-is-ownership.html) · [4.2 References and Borrowing](https://doc.rust-lang.org/book/ch04-02-references-and-borrowing.html#dangling-references)

**This code is meant to fail.** Rust refuses to compile a function that returns a reference to a value that has already been freed.

```sh
cargo run
```

You should see `error[E0106]: missing lifetime specifier`. The help line explains why: *"this function's return type contains a borrowed value, but there is no value for it to be borrowed from."*

**Try it:** change the function to return an owned `String` (`fn dangle() -> String { … s }`) and run it again.

**Compare with C:** `c/dangle.c` makes the same mistake. It compiles with only a warning:

```sh
gcc c/dangle.c -o dangle && ./dangle
```

What it does when run is undefined behaviour. In our run it crashed with a segfault.

The example is adapted from The Rust Book (MIT OR Apache-2.0).
