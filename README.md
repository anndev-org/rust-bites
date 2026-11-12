# Rust Bites 🦀

The code from **Rust Bites**, a short-video Rust course for developers on TikTok [@anndev.org](https://www.tiktok.com/@anndev.org). It follows [The Rust Programming Language](https://doc.rust-lang.org/book/) chapter by chapter, using **Rust 1.97+ and edition 2024**.

There's one folder per episode, and each one is a standalone Cargo project:

```sh
cd l1e01-why-rust
cargo run
```

Some episodes show code that **intentionally doesn't compile**, so you can see the compiler's error for yourself. Their README says so, and `expected.txt` lists the error code you should get.

## Episodes

### Level 1: Rust Foundations

| Ep | Title | Book | Code |
| --- | --- | --- | --- |
| 1 | Why does Rust exist? | Intro, 4.1–4.2 | [l1e01-why-rust](l1e01-why-rust) |

## Checking the examples

`./check.sh` builds every episode on the current stable Rust. Each one must either build, or fail with exactly the error codes listed in its `expected.txt`. CI runs this every week, so the examples stay true on the latest Rust.

## License

Licensed under either [MIT](LICENSE-MIT) or [Apache-2.0](LICENSE-APACHE), at your option, like The Rust Book, which many examples are adapted from.

Not affiliated with the Rust Project or the Rust Foundation.
