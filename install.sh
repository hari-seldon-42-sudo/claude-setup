#!/usr/bin/env bash
set -euo pipefail

echo "=== Claude Code Environment Setup ==="
echo ""

# 1. Copy settings
CLAUDE_DIR="$HOME/.claude"
mkdir -p "$CLAUDE_DIR"

if [ -f "$CLAUDE_DIR/settings.json" ]; then
  echo "[!] ~/.claude/settings.json already exists."
  echo "    Backing up to settings.json.bak"
  cp "$CLAUDE_DIR/settings.json" "$CLAUDE_DIR/settings.json.bak"
fi

cp settings.json "$CLAUDE_DIR/settings.json"
echo "[✓] Settings copied to ~/.claude/settings.json"

# 2. Install plugins via Claude Code CLI
echo ""
echo "=== Installing Plugins ==="
echo ""
echo "Run these commands in Claude Code to install plugins:"
echo ""
echo '  /install-plugin humanizer from blader/humanizer'
echo '  /install-plugin superpowers from anthropics/claude-plugins-official'
echo ""
echo "Or install them from the Claude Code plugin marketplace UI."

# 3. Project skills
echo ""
echo "=== Project Skills ==="
echo ""
echo "To add project skills, clone them into your project's skills/ directory:"
echo ""
echo '  mkdir -p skills'
echo '  # diagram-design (from anthropics/claude-plugins-official)'
echo '  git clone --depth 1 https://github.com/anthropics/claude-plugins-official.git /tmp/claude-plugins'
echo '  cp -r /tmp/claude-plugins/skills/diagram-design skills/'
echo '  rm -rf /tmp/claude-plugins'
echo ""
echo '  # humanizer'
echo '  git clone --depth 1 https://github.com/blader/humanizer.git skills/humanizer'
echo ""

echo "=== Done ==="
echo "Restart Claude Code to pick up the new settings and plugins."
