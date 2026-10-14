# Git Workflow Rules

1. **Branching**: For every new screen or task, check out a dedicated feature branch (`feature/<screen-name>`). Never commit directly to `main`.
2. **Commits**: When a screen or job is completed, stage all changed files and write a clean, descriptive commit message describing what was done.
3. **No Automated Pushing**: **NEVER run `git push` yourself.**
4. **Handoff**: After committing, report the branch name to the user, stop, and wait for the user to push to remote and say continue.
