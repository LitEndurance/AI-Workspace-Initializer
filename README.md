# AI Workspace Initializer

A curated list of professional open-source repositories for AI-driven development — plus a workspace template with deduplicated skill management so you don't clone the same repo ten times.

> **All credit goes to the original authors.** This repo is just an index. See [DISCLAIMER.md](./DISCLAIMER.md) for the full attribution policy.

---

## What's On This List

Every repo here is chosen because it has real engineering behind it: active maintenance, genuine community use, and authors with a track record. No astroturf, no vaporware, no toy demos.

The list is organized by **how you work with AI**:

| Section | For When You... |
|---------|-----------------|
| [Hands-On / Pair Programming](#hands-on--pair-programming) | Want to stay in control. Review every diff. |
| [Balanced / Skills-Based](#balanced--skills-based) | Want reusable patterns without giving up oversight. |
| [Autonomous / Agent Orchestration](#autonomous--agent-orchestration) | Want agents that run overnight and ship while you sleep. |

---

## Hands-On / Pair Programming

> You review every diff. The AI is a pair, not a replacement.

| Repo | Author | What It Does |
|------|--------|--------------|
| [Aider](https://github.com/Aider-AI/aider) | [Aider-AI](https://github.com/Aider-AI) | AI pair programming in your terminal. Edit files, run tests, commit — all with natural language. The most mature tool in this category. |
| [Continue](https://github.com/continuedev/continue) | [Continue Dev](https://github.com/continuedev) | Open-source autopilot for VS Code and JetBrains. Bring your own API key. Full control over context and prompts. |
| [mattpocock/skills](https://github.com/mattpocock/skills) | [Matt Pocock](https://github.com/mattpocock) | Small, composable agent skills for grilling, TDD, diagnosis, and handoffs. Human-in-the-loop by design. |
| [mattpocock/dictionary-of-ai-coding](https://github.com/mattpocock/dictionary-of-ai-coding) | [Matt Pocock](https://github.com/mattpocock) | Plain-English glossary of AI coding terms. Stops you from guessing what "prefix cache" or "attention degradation" means. |

**What to add here:** Terminal-based pair programmers, IDE extensions with full prompt transparency, diff-review tools, and anything that keeps the human as the final gate.

---

## Balanced / Skills-Based

> Reusable patterns, shared language, and progressive disclosure. You steer, but the agent remembers the conventions.

| Repo | Author | What It Does |
|------|--------|--------------|
| [kodustech/awesome-agent-skills](https://github.com/kodustech/awesome-agent-skills) | [Kodus](https://github.com/kodustech) | Curated installable skills for Claude Code, Codex, Cursor. Maintained by a devtools company with real customers. |
| [EliFuzz/awesome-system-prompts](https://github.com/EliFuzz/awesome-system-prompts) | [EliFuzz](https://github.com/EliFuzz) | System prompts and tool definitions extracted from Claude Code, Cursor, Codex, Devin, and more. Useful for understanding how agents are wired. |
| [Anthropic Cookbook](https://github.com/anthropics/anthropic-cookbook) | [Anthropic](https://github.com/anthropics) | Official recipes from Anthropic. Agents, RAG, tool use, structured output, evaluation — all from the source. |

**What to add here:** Official cookbooks, well-maintained skill collections, prompt pattern libraries from authors with a track record, and context-management tools with real usage.

---

## Autonomous / Agent Orchestration

> Describe what you want. Go home. The agents ship it.

| Repo | Author | What It Does |
|------|--------|--------------|
| [mattpocock/sandcastle](https://github.com/mattpocock/sandcastle) | [Matt Pocock](https://github.com/mattpocock) | Orchestrate sandboxed coding agents in TypeScript with `sandcastle.run()`. Designed for fully autonomous workflows with guardrails. |
| [OpenHands](https://github.com/All-Hands-AI/OpenHands) | [All Hands AI](https://github.com/All-Hands-AI) | Open-source autonomous coding agent (formerly OpenDevin). Runs in a sandbox, plans, writes code, and submits PRs. Active research community. |
| [gpt-engineer](https://github.com/AntonOsika/gpt-engineer) | [Anton Osika](https://github.com/AntonOsika) | Specify what you want it to build. The AI asks clarifying questions and then builds it. Precursor to Lovable.dev. |

**What to add here:** Sandboxed runtimes, autonomous deployment pipelines, multi-agent orchestrators with real research or production usage, and anything that removes the human from the loop by design — but only if it has a community behind it.

---

## Workspace Template

This repo also includes a minimal workspace starter in [`/template`](./template). It gives you:

- `AGENTS.md` — standing brief for any agent that opens your repo
- `docs/CONTEXT.md` — living domain glossary (ubiquitous language)
- `docs/adr/` — architecture decision records
- `.githooks/` — pre-commit and commit-msg hooks that catch common AI-coding mistakes
- `scripts/workspace` — deduplicated skill manager (one global cache, many projects)
- `scripts/setup-hooks.sh` — one-command hook activation

### Git Hooks

The template ships with pre-commit and commit-msg hooks that catch mistakes common in AI-driven development:

- **Blocks unresolved `[FILL]` markers** — prevents committing template placeholders
- **Blocks AI temporary markers** — catches `TODO(ai)`, `FIXME(ai)`, `HACK(ai)`
- **Blocks large files** — prevents accidentally committing >5MB files
- **Blocks trailing whitespace** — keeps diffs clean
- **Blocks `.env` files** — prevents secret leakage
- **Enforces descriptive commit messages** — no more `fix` or `wip`

Activate them:
```bash
./scripts/setup-hooks.sh
```

### Deduplicated Skill Management

The `scripts/workspace` tool keeps one copy of each skill repo in `~/.workspace-init/skills/` and syncs them into projects that need them.

```bash
# Add a skill to the global cache (once)
./scripts/workspace add mattpocock/skills

# Declare which skills this project uses in workspace.json
# { "skills": ["mattpocock-skills"] }

# Sync them into ./skills/
./scripts/workspace sync

# Update all cached skills to latest
./scripts/workspace update
```

---

## Contributing

Found a repo that belongs here? Open a PR with:
1. The repo link and a one-line description
2. The author's GitHub username or org
3. Which workflow section it belongs in (Hands-On, Balanced, or Autonomous)
4. Confirmation that it's open-source (MIT, Apache-2.0, GPL, or similar)
5. Evidence of real usage: stars, active maintenance, or a known author

---

## License

The curation, README text, workspace template, and `scripts/workspace` tool are released under the [MIT License](./LICENSE).

All linked repositories remain the property of their respective authors and are subject to their own licenses.
