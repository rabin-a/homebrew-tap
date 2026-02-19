# Homebrew Tap for IntentFlow

<p align="center">
  <img src="https://raw.githubusercontent.com/rabin-a/intentflow/main/assets/logo.png" alt="IntentFlow" width="200" />
</p>

[IntentFlow](https://github.com/rabin-a/intentflow) is an AI-agent and human shared memory layer for project intent. It keeps your project's **why** alongside your code's **what**.

## Install

```sh
brew tap rabin-a/tap
brew install intentflow
```

## Upgrade

```sh
brew update
brew upgrade intentflow
```

## Verify

```sh
intentflow --version
```

## Quick Start

```sh
# Initialize in any git repo
cd your-project
intentflow init

# Load all context (for AI agents)
intentflow load

# Check project status
intentflow status

# Document a file's purpose
intentflow set-intent src/main.rs "CLI entry point, parses args and dispatches commands"

# Record what changed
intentflow append-timeline "Added user authentication"

# Validate project structure
intentflow validate
```

## All Commands

| Command | Description |
|---------|-------------|
| `init` | Create `.intentflow/` with templates |
| `load` | Output all docs as structured context |
| `status` | Current state + recent timeline |
| `explain <file>` | Show file intent (human-friendly) |
| `get-intent <file>` | Read file intent (machine-friendly) |
| `set-intent <file> "<text>"` | Create/update file intent |
| `get-vision` | Print vision.md |
| `update-vision "<text>"` | Append to vision.md |
| `get-architecture` | Print architecture.md |
| `update-architecture "<text>"` | Append to architecture.md |
| `append-timeline "<entry>"` | Quick timeline entry |
| `update timeline` | Structured timeline entry (interactive) |
| `validate` | Check `.intentflow/` structure |
| `hook install` | Install git pre-commit hook |
| `hook uninstall` | Remove git pre-commit hook |

## More Info

- [Full documentation](https://github.com/rabin-a/intentflow#readme)
- [Agent skill guide (SKILL.md)](https://github.com/rabin-a/intentflow/blob/main/SKILL.md)
- [Releases](https://github.com/rabin-a/intentflow/releases)
