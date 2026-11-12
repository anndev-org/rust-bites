#!/usr/bin/env bash
# Build every episode. Episodes with an expected.txt must fail with exactly
# those error codes; all others must build cleanly.
set -uo pipefail
cd "$(dirname "$0")"
rustc --version
fail=0
for dir in l*/; do
  dir=${dir%/}
  [ -f "$dir/Cargo.toml" ] || continue
  out=$(cargo build --quiet --manifest-path "$dir/Cargo.toml" 2>&1); status=$?
  if [ -f "$dir/expected.txt" ]; then
    want=$(grep -o 'E[0-9]\{4\}' "$dir/expected.txt" | sort -u)
    got=$(grep -o 'error\[E[0-9]\{4\}\]' <<<"$out" | grep -o 'E[0-9]\{4\}' | sort -u)
    if [ $status -ne 0 ] && [ "$want" = "$got" ]; then
      echo "ok    $dir (fails as expected: $(echo $got))"
    else
      echo "FAIL  $dir (expected: $(echo $want), got: ${got:-builds}, exit $status)"; fail=1
    fi
  else
    if [ $status -eq 0 ]; then echo "ok    $dir (builds)"; else echo "FAIL  $dir"; echo "$out"; fail=1; fi
  fi
done
exit $fail
