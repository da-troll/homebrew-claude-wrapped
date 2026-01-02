# Homebrew Tap for Claude Wrapped

Official Homebrew tap for [claude-wrapped](https://github.com/da-troll/claude-code-wrapped).

## Installation

```bash
brew tap da-troll/claude-wrapped
brew install claude-wrapped
```

## Usage

After installation, run:

```bash
claude-wrapped
```

## What is Claude Wrapped?

Your year with Claude Code, Spotify Wrapped style. A beautiful terminal experience that analyzes your local Claude Code conversation history and presents your coding year in a cinematic format.

## Links

- [Main Repository](https://github.com/da-troll/claude-code-wrapped)
- [PyPI Package](https://pypi.org/project/claude-wrapped/)
- [npm Package](https://www.npmjs.com/package/claude-wrapped)

## Updating the Formula

After publishing a new version to PyPI:

1. Update the version and URL in `Formula/claude-wrapped.rb`
2. Get the SHA256 hash from PyPI or calculate it:
   ```bash
   curl -sL https://files.pythonhosted.org/packages/.../claude-wrapped-X.Y.Z.tar.gz | shasum -a 256
   ```
3. Update the `sha256` field in the formula
4. Test locally:
   ```bash
   brew install --build-from-source ./Formula/claude-wrapped.rb
   ```
5. Commit and push

## License

MIT
