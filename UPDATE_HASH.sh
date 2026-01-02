#!/bin/bash
# Script to update the SHA256 hash in the Homebrew formula after publishing to PyPI

set -e

VERSION="${1:-0.1.11}"

echo "Fetching SHA256 for claude-wrapped version $VERSION from PyPI..."

# Get the download URL from PyPI
PYPI_URL="https://files.pythonhosted.org/packages/source/c/claude-wrapped/claude-wrapped-${VERSION}.tar.gz"

echo "URL: $PYPI_URL"

# Download and calculate hash
echo "Calculating SHA256..."
HASH=$(curl -sL "$PYPI_URL" | shasum -a 256 | cut -d' ' -f1)

if [ -z "$HASH" ]; then
    echo "ERROR: Failed to download or calculate hash"
    echo "Make sure the package is published to PyPI first!"
    exit 1
fi

echo "SHA256: $HASH"

# Update the formula
echo "Updating Formula/claude-wrapped.rb..."
sed -i '' "s/sha256 \".*\"/sha256 \"$HASH\"/" Formula/claude-wrapped.rb
sed -i '' "s/claude-wrapped-[0-9.]*\.tar\.gz/claude-wrapped-${VERSION}.tar.gz/" Formula/claude-wrapped.rb

echo "✓ Formula updated!"
echo ""
echo "Next steps:"
echo "1. Test the formula: brew install --build-from-source ./Formula/claude-wrapped.rb"
echo "2. Commit and push to GitHub"
echo "3. Users can install with: brew tap da-troll/claude-wrapped && brew install claude-wrapped"
