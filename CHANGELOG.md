# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.3.0] - 2026-10-05

## Added

- **Agents Support:** New `library-agent` content type to publish A2A agents. The agent card is pasted in the `agentCard` JSON field.
- **Agent Card Validation:** Lifecycle that accepts A2A v0.3 (top-level `url`) and v1.0 (`supportedInterfaces`) cards, requires `name`, `description`, `version` and `skills`, and fills empty `title`, `description`, `version` and `slug` from the card.
- **Agent Permissions:** Public and authenticated roles get `find`/`findOne` on agents in the initial setup, as the other resources.
- **Agents Page Seed:** New `agents` page with a banner section in the seed data.
- **Agent Quality:** Optional `ratings` (shared `apis.ratings` component, A–E grades) and `reportUrl` fields on `library-agent`, as in `library-mcp`.
- **Agent Markdown:** Optional `markdown` rich text field on `library-agent` for a long description, as in `library-mcp`.

## [1.2.1] - 2026-07-16

## Fixed

- **Upload Provider:** Corrected the development environment's upload plugin configuration.


## [1.2.0] - 2026-05-25

## Added

- **GraphQL Support:** Added `graphql` as a new value in the `openDocType` enum of `library-api`, with conditional visibility to hide `openDocFormat` when the type is GraphQL.
- **GraphQL Lifecycle:** Added early return in `smartFormatConverter` to skip JSON/YAML conversion for GraphQL SDL documents, and added SDL validation that rejects documents without at least one type, interface, input, enum, or schema definition.
- **Apim Config:** Implement on-demand synchronization for APIM configurations


## [1.1.0] - 2026-04-16

## Added

- **MCP Support:** Implementation of MCP schema and connection logic.
- **MCP Service:** New service to manage provider connections using custom headers.
- **MCP Service:** Update connection and request timeouts.
