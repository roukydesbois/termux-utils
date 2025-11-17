# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This repository contains installation scripts for various CLI tools and utilities designed to run in Termux on Android (ARM64 architecture). All scripts install binaries to `/data/data/com.termux/files/usr/bin/` which is the standard Termux binary location.

## Architecture

### Directory Structure

- `one-thing-scripts/` - Collection of standalone installation scripts, each focused on installing a single tool or utility

### Script Patterns

All installation scripts follow a consistent pattern:

1. **Package dependencies**: Install required Termux packages via `pkg install`
2. **Download**: Fetch pre-compiled binaries or source archives from GitHub releases
3. **Extract**: Unzip/untar if needed
4. **Install**: Move binary to `/data/data/com.termux/files/usr/bin/`
5. **Permissions**: Make executable with `chmod +x`
6. **Cleanup**: Remove temporary files

### Target Architecture

Scripts are currently hardcoded for **ARM64/aarch64** architecture. Many scripts have TODO comments noting that architecture detection should be added before downloading binaries.

## Installed Tools

The repository includes installation scripts for:

- **talosctl** - Talos Kubernetes CLI (v1.11.2)
- **opentofu** - Open source Terraform alternative (v1.10.6)
- **incus** - LXC container/VM manager (latest)
- **stu** - TUI for S3-compatible storage (v0.7.4)
- **velero** - Kubernetes backup tool (v1.17.0)
- **helix-gpt** - GPT integration for Helix editor (v0.34, x86_64 architecture noted)
- **copilot-install.sh** - Complete LSP setup including:
  - GitHub Copilot language server
  - Ansible language server
  - YAML language server
  - Terraform language server (terraform-ls v0.38.0)
  - Helix editor with language server configuration

## Running Scripts

Scripts should be executed from the repository root:

```bash
bash one-thing-scripts/<script-name>.sh
```

Or made executable and run directly:

```bash
chmod +x one-thing-scripts/<script-name>.sh
./one-thing-scripts/<script-name>.sh
```

## Development Notes

### Known Issues

1. **Architecture detection**: Most scripts hardcode ARM64. Should detect architecture before downloading.
2. **helix-gpt_install.sh**: Downloads x86_64 binary (line 7) which won't work on ARM64 Termux
3. **Shebang inconsistency**: Some scripts missing `#` in shebang (e.g., `opentofu_install.sh:1`, `stu_install.sh:1`, `velero_install.sh:1`)

### Adding New Scripts

When adding new installation scripts:

1. Follow the established pattern (dependencies → download → install → cleanup)
2. Include architecture detection or document required architecture
3. Use proper shebang: `#!/bin/bash`
4. Install to `/data/data/com.termux/files/usr/bin/`
5. Add `chmod +x` for the installed binary
6. Clean up temporary files and directories
7. Consider adding version variables at the top for easier updates

### Version Updates

To update tool versions:
1. Modify the GitHub release URL with the new version number
2. Update any version-specific filenames in the download and extraction steps
3. Test the installation to ensure compatibility with Termux ARM64
