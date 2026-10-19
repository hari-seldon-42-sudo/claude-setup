# Claude Code Setup

My Claude Code plugins, skills, and settings — for replicating my environment on other machines.

## Quick Start

```bash
# Clone this repo
git clone https://github.com/hari-seldon-42-sudo/claude-setup.git
cd claude-setup

# Run the install script
chmod +x install.sh
./install.sh
```

## What's Included

### Plugins (installed via marketplaces)

| Plugin | Marketplace | Source Repo | Version |
|--------|-------------|-------------|---------|
| superpowers | claude-plugins-official | `anthropics/claude-plugins-official` | 5.1.0 |
| humanizer | humanizer | `blader/humanizer` | 3.1.0 |

### Extra Marketplaces

| Name | Source Repo |
|------|-------------|
| raghuram-skills | `raghuramsirigiri/claude-chart-dashboard` |

### Local Project Skills (in `skills/`)

| Skill | Source |
|-------|--------|
| diagram-design | `anthropics/claude-plugins-official` (skills subfolder) |
| humanizer | `blader/humanizer` |

### Settings

- Model: `opus[1m]`
- Permission mode: `auto`

## Files

- `manifest.json` — machine-readable list of all plugins, skills, marketplaces, and settings
- `settings.json` — Claude Code settings (copy to `~/.claude/settings.json`)
- `install.sh` — automated install script
