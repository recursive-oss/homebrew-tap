# Contributing to Recursive's Homebrew tap

Thank you for your interest. This repository holds the Homebrew formulae for
Recursive's open-source tools. We welcome bug reports, documentation fixes and
fixes to the formulae. This guide explains how to contribute.

## Code of conduct

This project follows the [Contributor Covenant](CODE_OF_CONDUCT.md). By taking
part, you agree to follow it.

Do not share secrets in issues, pull requests, or logs. This includes API keys
and tokens.

## Report a bug

Search the existing issues before you open a new one. A problem with
installing, upgrading or uninstalling through Homebrew belongs here: open an
issue with the **Bug report** form. A problem with a tool once it is installed
belongs in that tool's repository, such as
[rec's issues](https://github.com/recursive-oss/rec/issues).

## Report a security vulnerability

Do not open a public issue for a security vulnerability. For private reporting
instructions, read the [security policy](SECURITY.md).

## Suggest a change

For a small fix, open a pull request directly. To add a formula, open an issue
first. This tap has formulae only for Recursive's own tools.

## Set up a development environment

Install [Homebrew](https://brew.sh), then tap this repository and work in the
clone that Homebrew makes:

```sh
brew tap recursive-oss/tap
brew trust recursive-oss/tap
cd "$(brew --repository recursive-oss/tap)"
```

Add your fork as a remote of that clone to push your branch.

## Make a change

1. Create a branch from `main`.
2. Make one focused change. Unrelated changes belong in separate pull requests.
3. Update the README when you change how a formula installs, upgrades or
   uninstalls.
4. Run the checks for every formula you changed:

   ```sh
   brew style recursive-oss/tap
   brew audit --strict --online recursive-oss/tap/rec
   brew reinstall recursive-oss/tap/rec
   brew test recursive-oss/tap/rec
   ```

## Update a formula to a new release

After the tool's release is published, bump its formula on a branch, then run
the checks above:

```sh
brew bump-formula-pr --write-only --version 0.1.2 recursive-oss/tap/rec
```

`brew livecheck recursive-oss/tap/rec` shows whether a newer release exists.

## Quality standards and evaluation

To be merged, contributions should meet a high standard of correctness and
simplicity. Follow the style of the existing formulae and Homebrew's own. A
formula installs its tool and nothing else: no steps that change a user's
shell configuration or other files.

AI tools are fine to use but you remain responsible for every line you submit.
Please review, understand, and test the full change, and be ready to explain
your choices.

## Open a pull request

- Use a short, clear title.
- Describe what changed and why. Link the related issue.
- Tell us how you tested the change.
- Keep the pull request small enough to review.

We'll do our best to respond, but cannot guarantee a thorough review or a
timeline, especially for contributions that do not meet these requirements.
Review depends on maintainer availability and project priorities. A merge is not
guaranteed, and we may close PRs that fall outside the project's scope or
maintenance capacity.

## License

This tap is licensed under the [Apache License, Version 2.0](LICENSE). By
submitting a contribution, you agree that it is licensed under the same terms,
as Section 5 of the license describes. You must have the right to submit the
contribution.
