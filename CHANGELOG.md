# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.3.0] - 2026-05-25

## Added

- **GraphQL Support:** Added `graphql` as a new value in the `openDocType` enum of `library-api`, with conditional visibility to hide `openDocFormat` when the type is GraphQL.
- **GraphQL Lifecycle:** Added early return in `smartFormatConverter` to skip JSON/YAML conversion for GraphQL SDL documents, and added SDL validation that rejects documents without at least one type, interface, input, enum, or schema definition.
- **Apim Config:** Implement on-demand synchronization for APIM configurations


## [1.1.0] - 2026-04-16

## Added

- **MCP Support:** Implementation of MCP schema and connection logic.
- **MCP Service:** New service to manage provider connections using custom headers.
- **MCP Service:** Update connection and request timeouts.