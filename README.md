# AI Workspace Initializer

A curated list of professional open-source repositories for AI-driven development — plus a workspace template with deduplicated skill management so you don't clone the same repo ten times.

> **All credit goes to the original authors.** This repo is just an index. See [DISCLAIMER.md](./DISCLAIMER.md) for the full attribution policy.

---

## What's On This List

Every repo here is chosen because it makes AI-driven development more professional, more reliable, or more scalable. No fluff. No toy demos. Just open-source tools and patterns that working engineers actually use.

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
| [Aider](https://github.com/Aider-AI/aider) | [Aider-AI](https://github.com/Aider-AI) | AI pair programming in your terminal. Edit files, run tests, commit — all with natural language. |
| [mattpocock/skills](https://github.com/mattpocock/skills) | [Matt Pocock](https://github.com/mattpocock) | Small, composable agent skills for grilling, TDD, diagnosis, and handoffs. Human-in-the-loop by design. |
| [mattpocock/dictionary-of-ai-coding](https://github.com/mattpocock/dictionary-of-ai-coding) | [Matt Pocock](https://github.com/mattpocock) | Plain-English glossary of AI coding terms. Stops you from guessing what "prefix cache" means. |
| [roebi/aider-skills](https://github.com/roebi/aider-skills) | [roebi](https://github.com/roebi) | Inject structured skills into Aider sessions without changing Aider itself. |

**What to add here:** Terminal-based pair programmers, inline assistants, human-in-the-loop frameworks, diff-review tools, and anything that keeps the human as the final gate.

---

## Balanced / Skills-Based

> Reusable patterns, shared language, and progressive disclosure. You steer, but the agent remembers the conventions.

| Repo | Author | What It Does |
|------|--------|--------------|
| [kodustech/awesome-agent-skills](https://github.com/kodustech/awesome-agent-skills) | [Kodus](https://github.com/kodustech) | Curated installable skills for Claude Code, Codex, Cursor. |
| [EliFuzz/awesome-system-prompts](https://github.com/EliFuzz/awesome-system-prompts) | [EliFuzz](https://github.com/EliFuzz) | System prompts and tool definitions from Claude Code, Cursor, Codex, Devin, and more. |
| [stulyf/coding_agent-prompts](https://github.com/stulyf/coding_agent-prompts) | [stulyf](https://github.com/stulyf) | Prompt patterns for context compression, multi-agent coordination, memory management. |
| [florian101010/awesome-agentic-AI-coding-template](https://github.com/florian101010/awesome-agentic-AI-coding-template) | [florian101010](https://github.com/florian101010) | Pre-wired project template with skills system, workflows, and Git hooks. |
| [matteocervelli/llms](https://github.com/matteocervelli/llms) | [Matteo Cervelli](https://github.com/matteocervelli) | Centralized LLM config, skills, commands, agents, and MCP server tooling. |
| [kevin-lee/ai-skills](https://github.com/kevin-lee/ai-skills) | [Kevin Lee](https://github.com/kevin-lee) | Native CLI for managing reusable prompt skills across projects. |

**What to add here:** Skill collections, project templates, prompt pattern libraries, system prompt references, and context-management tools.

---

## Autonomous / Agent Orchestration

> Describe what you want. Go home. The agents ship it.

| Repo | Author | What It Does |
|------|--------|--------------|
| [mattpocock/sandcastle](https://github.com/mattpocock/sandcastle) | [Matt Pocock](https://github.com/mattpocock) | Orchestrate sandboxed coding agents in TypeScript with `sandcastle.run()`. The entry point for fully autonomous workflows. |
| [PraisonAI](https://github.com/MervinPraison/PraisonAI) | [Mervin Praison](https://github.com/MervinPraison) | 24/7 AI workforce. Self-improving agents that research, plan, code, and execute. |
| [kelos](https://github.com/kelos-dev/kelos) | [Kelos](https://github.com/kelos-dev) | Kubernetes-native framework for orchestrating autonomous AI coding agents. |
| [swarmclaw](https://github.com/swarmclawai/swarmclaw) | [Swarmclaw AI](https://github.com/swarmclawai) | Multi-agent framework for autonomous agent swarms. Memory, MCP tools, delegation, schedules. |
| [AgentManager](https://github.com/simonstaton/AgentManager) | [Simon Staton](https://github.com/simonstaton) | Conduct autonomous Claude Code agents at scale with kill switches and cost tracking. |
| [aiki](https://github.com/glasner/aiki) | [glasner](https://github.com/glasner) | Agent-agnostic framework for building autonomous coding workflows. |
| [arc-cli](https://github.com/Ashutosh0x/arc-cli) | [Ashutosh0x](https://github.com/Ashutosh0x) | High-performance agentic CLI in Rust for autonomous multi-agent code generation. |

**What to add here:** Multi-agent orchestrators, sandboxed runtimes, autonomous deployment pipelines, AFK frameworks, and anything that removes the human from the loop by design.

---

## Workspace Template

This repo also includes a minimal workspace starter in [`/template`](./template). It gives you:

- `AGENTS.md` — standing brief for any agent that opens your repo
- `docs/CONTEXT.md` — living domain glossary (ubiquitous language)
- `docs/adr/` — architecture decision records
- `scripts/workspace` — deduplicated skill manager (one global cache, many projects)

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
5. Why it's professional-grade, not a toy demo

---

## License

The curation, README text, workspace template, and `scripts/workspace` tool are released under the [MIT License](./LICENSE).

All linked repositories remain the property of their respective authors and are subject to their own licenses.
