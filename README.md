# AI Workspace Initializer

A curated list of professional repositories for AI-driven development — plus a workspace template with deduplicated skill management so you don't clone the same repo ten times.

---

## What's On This List

Every repo here is chosen because it makes AI-driven development more professional, more reliable, or more scalable. No fluff. No toy demos. Just tools and patterns that working engineers actually use.

The list is organized by **how you work with AI**:

| Section | For When You... |
|---------|-----------------|
| [Hands-On / Pair Programming](#hands-on--pair-programming) | Want to stay in control. Review every diff. |
| [Balanced / Skills-Based](#balanced--skills-based) | Want reusable patterns without giving up oversight. |
| [Autonomous / Agent Orchestration](#autonomous--agent-orchestration) | Want agents that run overnight and ship while you sleep. |

---

## Hands-On / Pair Programming

> You review every diff. The AI is a pair, not a replacement.

| Repo | What It Does |
|------|--------------|
| [Aider](https://github.com/Aider-AI/aider) | AI pair programming in your terminal. Edit files, run tests, commit — all with natural language. |
| [mattpocock/skills](https://github.com/mattpocock/skills) | Small, composable agent skills for grilling, TDD, diagnosis, and handoffs. Human-in-the-loop by design. |
| [mattpocock/dictionary-of-ai-coding](https://github.com/mattpocock/dictionary-of-ai-coding) | Plain-English glossary of AI coding terms. Stops you from guessing what "prefix cache" means. |
| [roebi/aider-skills](https://github.com/roebi/aider-skills) | Inject structured skills into Aider sessions without changing Aider itself. |

**What to add here:** Terminal-based pair programmers, inline assistants, human-in-the-loop frameworks, diff-review tools, and anything that keeps the human as the final gate.

---

## Balanced / Skills-Based

> Reusable patterns, shared language, and progressive disclosure. You steer, but the agent remembers the conventions.

| Repo | What It Does |
|------|--------------|
| [kodustech/awesome-agent-skills](https://github.com/kodustech/awesome-agent-skills) | Curated installable skills for Claude Code, Codex, Cursor. |
| [EliFuzz/awesome-system-prompts](https://github.com/EliFuzz/awesome-system-prompts) | System prompts and tool definitions from Claude Code, Cursor, Codex, Devin, and more. |
| [stulyf/coding_agent-prompts](https://github.com/stulyf/coding_agent-prompts) | Prompt patterns for context compression, multi-agent coordination, memory management. |
| [florian101010/awesome-agentic-AI-coding-template](https://github.com/florian101010/awesome-agentic-AI-coding-template) | Pre-wired project template with skills system, workflows, and Git hooks. |
| [matteocervelli/llms](https://github.com/matteocervelli/llms) | Centralized LLM config, skills, commands, agents, and MCP server tooling. |
| [kevin-lee/ai-skills](https://github.com/kevin-lee/ai-skills) | Native CLI for managing reusable prompt skills across projects. |

**What to add here:** Skill collections, project templates, prompt pattern libraries, system prompt references, and context-management tools.

---

## Autonomous / Agent Orchestration

> Describe what you want. Go home. The agents ship it.

| Repo | What It Does |
|------|--------------|
| [mattpocock/sandcastle](https://github.com/mattpocock/sandcastle) | Orchestrate sandboxed coding agents in TypeScript with `sandcastle.run()`. The entry point for fully autonomous workflows. |
| [PraisonAI](https://github.com/MervinPraison/PraisonAI) | 24/7 AI workforce. Self-improving agents that research, plan, code, and execute. |
| [kelos](https://github.com/kelos-dev/kelos) | Kubernetes-native framework for orchestrating autonomous AI coding agents. |
| [swarmclaw](https://github.com/swarmclawai/swarmclaw) | Multi-agent framework for autonomous agent swarms. Memory, MCP tools, delegation, schedules. |
| [AgentManager](https://github.com/simonstaton/AgentManager) | Conduct autonomous Claude Code agents at scale with kill switches and cost tracking. |
| [aiki](https://github.com/glasner/aiki) | Agent-agnostic framework for building autonomous coding workflows. |
| [arc-cli](https://github.com/Ashutosh0x/arc-cli) | High-performance agentic CLI in Rust for autonomous multi-agent code generation. |

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
2. Which workflow section it belongs in (Hands-On, Balanced, or Autonomous)
3. Why it's professional-grade, not a toy demo
