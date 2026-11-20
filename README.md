<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)"
      srcset=".github/assets/recursive_logo_light.svg">
    <img src=".github/assets/recursive_logo_dark.svg" alt="Recursive"
      width="400">
  </picture>
</p>

This is the [Homebrew](https://brew.sh) tap for Recursive's open-source tools.

| Formula | What it is |
|---|---|
| [`rec`](https://github.com/recursive-oss/rec) | Our inference engine for running Flint locally on Apple Silicon |


## Install

```bash
brew tap recursive-oss/tap
brew trust recursive-oss/tap
brew install recursive-oss/tap/rec
```

Homebrew loads formulae from a tap outside Homebrew only once you trust it.
Check rec's [requirements](https://github.com/recursive-oss/rec#requirements)
before you install.


## Upgrade

```bash
brew upgrade rec
```


## Uninstall

```bash
brew uninstall rec
```

rec keeps its models (about 30 GB), settings and sessions in
`~/.local/share/rec`. Delete that folder to remove them too.


## Help and contributing

- Problems installing, upgrading or uninstalling with Homebrew:
  [GitHub Issues](https://github.com/recursive-oss/homebrew-tap/issues).
- Problems with rec once it's installed:
  [rec's issues](https://github.com/recursive-oss/rec/issues).
- Contribution guide and local checks: [CONTRIBUTING.md](CONTRIBUTING.md).
- Community guidelines: [Code of conduct](CODE_OF_CONDUCT.md).
- Security vulnerabilities: [Private reporting instructions](SECURITY.md).
- License: [Apache 2.0](LICENSE).
