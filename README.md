# 8kno Homebrew Tap

This repository is generated from the private 8kno source tree.

## Install

```bash
brew install 8kno/tap/8kno
```

Homebrew requires the canonical formula file to start with a valid Ruby class name, so the tap ships `Formula/eightkno.rb` with an `Aliases/8kno` alias for install UX.

## Contents

- `Formula/eightkno.rb` is the canonical Homebrew formula.
- `Aliases/8kno` provides the `brew install 8kno/tap/8kno` entrypoint.
- `archives/v*/` stores the versioned runtime archives consumed by Homebrew and other manual installs.
- Each version directory includes its own `checksums.txt` manifest.
