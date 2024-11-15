SCRIPT_DIR="$(dirname "$0")"

echo "===Installing brew==="
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add brew to path
echo "===Adding brew to path==="
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "===Installing all my brew packages==="

brew install $(cat "$SCRIPT_DIR/packages.txt")

echo "===DONE installing brew packages==="
