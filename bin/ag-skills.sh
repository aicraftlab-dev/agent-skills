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
    echo "  help      Show this help message"
}

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

case "$1" in
    global)
        install_global
        ;;
    local)
        install_local
        ;;
    help|*)
        show_help
        ;;
esac
