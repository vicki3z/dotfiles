# Global Context

## Communication Style & Behaviour
- Prefer message to be concised and not over-explaning.
- When explaning technical or architectural flow, provide visual diagram to make it more digestable
- Never use em dashes (—). Use spaced hyphens - (space, hyphen, space) instead.
- Challenge my thinking to make sure I didn't miss any gap
- When replying to others, match my tone of voice. If you're unsure about my tone of voice, ask me and I'll give some examples.

## My main working repos
This is pretty much all folders under `~/repos/` that are git repositories.

## Documenting Preference
If I didn't specify to write document in Notion or if you can't connect to Notion, create a markdown documentation under `~/repos/docs/` instead.

## Workflow Preference
- When need to fetch linear tickets use linear MCP instead of Claude.ai
- Always create git worktree under `~/repos/worktrees/{repo-name}` folder. 
  - For example, `~/repos/worktrees/pos-integrations/pay-3508/` for `~/repos/pos-integrations/` related work
- Branch name should followed linear ticket. For example, `feature/PAY-3508-toast-room-charge-runtime`
- Rerun `npm ci` in the git worktree so we could run unit tests / integration tests, linting and type checking for the branch.
  - If encountered npm authentication issue, run `ml` shell command to perform AWS authentication
- If asked to validate the changes on local, make sure tilt is running and Tilt UI is accessible via `http://localhost:10350/`
  - Sync/unsync the changes in worktree with main using `nex graft` commands
- Use `nex web` commands to validate on browser
- When open a PR, reference the `.github/pull_request_template.md` if it's available in the working repo.
  - In `What's new` section, provide a more human-readable bullet-point summary of what we did and what's the impact.

## Development Standards
### Architecture Principles
- Prefer composition over inheritance
- Use dependency injection for testability
- Implement proper error boundaries
- Follow SOLID principles
- Adhere to NestJS best practices
### Code Quality Requirements
- Follow TDD principal and write failed tests before actual implementation
- Follow team's ESLint configuration
- Include both unit tests and integration test for new functionality and when there's change in existing functionality (min 80% coverage)
- Prefer integration tests to test the Graphql query/mutation call over calling resolver or service directly
- When working in `~/repos/pos-integrations/`, implement integration tests over unit tests. Only do unit tests for scenarios that can't be covered in integration tests
### Security Practices
- Never log sensitive data (passwords, API keys, PII)
- Use environment variables for secrets
### Coding Style
- Minimal to zero comments if the code is self-explantory. And we shouldn't mentioned ticket number if it's unnecessary. PR description or linear ticket description should already taken care of that
- No nested ternary
- Prefer `interfaces` over `types` when working with TypeScript
- Very particular with naming convention. Make sure we use good naming convention that is self-explanatory and not ambiguous
  - For boolean variable, using auxiliary verbs or adjectives to denote a true/false. And using positive affirmation instead of negated terms
  - A couple of examples that I considered as good naming convention:
    - `applicationSettings` over `settings`
    - `orderChargeCriteria` over `criteria`
    - `isMenuSyncBlocked` over `blocked`
    - `hasOrderError` over `isOrderError`
    - `convertDeliveryFeeInCents` over `deliverFeeInCents`
    - `cancelOrderCharge` over `cancelCharge`
    - `handlePaymentSubmit` over `submitPayment`
- Do not over-engineering. Adopt KISS principal - Keep it simple stupid, unless there's a pattern worth adopting.
- Backend with NestJS and Prisma
  - Adhere to NestJS best practices
    - Modular design
    - Dependency Injection
    - No nested function within the class function. This should either be private methods or pure utility functions
  - No functions that mutate variables/params
  - Apply appropriate error handling, logging, metrics, tracing, and probes using `@mr-yum/nest-*`
  - Pure utility functions should be created in `*.utils.ts` file
  - Transformer class/service should be created in `*.transformer.ts` file
  - When working with Prisma or DB related functionality, understand the existing indexes and utilise them for better performance
- Frontend with Nextjs and React
  - Don't over-optimised with `useMemo`, `useEffect`, `useCallback` if it's not necessary.
  - Check if component is available on `@mr-yum/frontend-ui` before proceeding with the implementation. If not, raise it up and propose on how component should be created

