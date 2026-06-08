# Security Policy

Founder Stack is a collection of Markdown skills, agents, and commands — there's
no running service to attack. Still, two kinds of issues matter and we want to
hear about them.

## What counts as a security issue here

1. **Unsafe guidance.** A skill or agent that instructs Claude to do something
   risky — e.g. printing secrets, running destructive commands without
   confirmation, weakening security, or mishandling user data.
2. **Prompt-injection surfaces.** Wording that could let untrusted content
   (a web page, a customer ticket) hijack the agent's behavior.

## Reporting

- **Do not** open a public issue for a sensitive report.
- Use GitHub's **private vulnerability reporting**:
  <https://github.com/uac-ops/founder-stack/security/advisories/new>
- Or email the maintainer listed on the GitHub profile.

Please include the file, the risky behavior, and a concrete example. We aim to
respond within a week.

## Scope note for users

The skills generate guidance and can dispatch agents that run commands. Always
review actions before approving them, especially anything touching production,
secrets, payments, or customer data. Treat the `secure` and `legal` skills as
starting points, not a substitute for a professional audit or legal counsel.
