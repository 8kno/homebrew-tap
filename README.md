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
- Runtime archives are published as GitHub Release assets for this repository.
- The formula points to `https://github.com/8kno/homebrew-tap/releases/download/v0.1.0`.
