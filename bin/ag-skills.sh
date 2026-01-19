#!/bin/bash

# Antigravity Skills Manager
# This script installs the product-to-market skill suite.

SOURCE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && cd .. && pwd )"
SKILLS_DIR="$SOURCE_DIR/.agent/skills"
GLOBAL_DEST="$HOME/.gemini/antigravity/skills"

show_help() {
    echo "Usage: ag-skills [command]"
    echo ""
    echo "Commands:"
    echo "  global    Install skills to the global Antigravity folder (~/.gemini/...)"
    echo "  local     Install skills to the current project's .agent/skills folder"
    echo "  update    Pull the latest skills from GitHub and update global/local"
    echo "  help      Show this help message"
}

REPO_URL="git@github.com:aicraftlab-dev/agent-skills.git"

install_global() {
    echo "🚀 Installing skills globally to $GLOBAL_DEST..."
    mkdir -p "$GLOBAL_DEST"
    cp -R "$SKILLS_DIR/"* "$GLOBAL_DEST/"
    echo "✅ Global installation complete!"
}

install_local() {
    TARGET_DIR="$(pwd)/.agent/skills"
    echo "📦 Installing skills to local project: $TARGET_DIR..."
    mkdir -p "$TARGET_DIR"
    cp -R "$SKILLS_DIR/"* "$TARGET_DIR/"
    echo "✅ Local installation complete!"
}

update_from_remote() {
    echo "🔄 Updating skills from GitHub..."
    if [ -d "$SOURCE_DIR/.git" ]; then
        cd "$SOURCE_DIR" && git pull origin main
    else
        echo "⚠️  Source directory is not a git repo. Attempting to clone..."
        git clone "$REPO_URL" "$SOURCE_DIR/temp_clone"
        cp -R "$SOURCE_DIR/temp_clone/.agent/skills/"* "$SKILLS_DIR/"
        rm -rf "$SOURCE_DIR/temp_clone"
    fi
    echo "✅ Skills updated. Re-running global installation..."
    install_global
}

case "$1" in
    global)
        install_global
        ;;
    local)
        install_local
        ;;
    update)
        update_from_remote
        ;;
    help|*)
        show_help
        ;;
esac

