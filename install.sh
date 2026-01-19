#!/bin/bash

# Antigravity Skills Global Installer
# Usage: curl -fsSL [url-to-this-script] | bash

REPO_URL="git@github.com:aicraftlab-dev/agent-skills.git"
INSTALL_DIR="$HOME/.aicraftlab/agent-skills"

echo "🏁 Starting Antigravity Skills Installation..."

# 1. Clone or Update the repository
if [ -d "$INSTALL_DIR" ]; then
    echo "🔄 Repository already exists. Updating..."
    cd "$INSTALL_DIR" && git pull origin main
else
    echo "📥 Cloning skills repository to $INSTALL_DIR..."
    git clone "$REPO_URL" "$INSTALL_DIR"
fi

# 2. Make the manager executable
chmod +x "$INSTALL_DIR/bin/ag-skills.sh"

# 3. Run the global installation
"$INSTALL_DIR/bin/ag-skills.sh" global

# 4. Add to PATH (optional but helpful)
SHELL_RC="$HOME/.zshrc"
if [ ! -f "$SHELL_RC" ]; then
    SHELL_RC="$HOME/.bashrc"
fi

if ! grep -q "ag-skills" "$SHELL_RC"; then
    echo "PATH=\"\$PATH:$INSTALL_DIR/bin\"" >> "$SHELL_RC"
    echo "✅ Added ag-skills to $SHELL_RC"
    echo "👉 Restart your terminal or run 'source $SHELL_RC' to use the 'ag-skills' command anywhere."
fi

echo "🚀 Installation complete! You now have the full Product-to-Market skill suite active."
