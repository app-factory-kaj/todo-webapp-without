# todo-webapp-without — PRD

## Problem Statement

People often just want to jot down and knock out a short list of tasks right now, without creating an account, remembering a password, or trusting a service to store their data long-term. Most todo apps force a sign-up step and a database behind them before showing a single checkbox, which is overkill for a quick, throwaway list.

## Solution

A single-page todo web app that works the instant it loads: no sign-in, no account, and no backend storage. Anyone who opens it can add, complete, edit, and remove todo items for as long as the page stays open; the list is simply gone the next time the page loads, by design.

## Actors

- **User** — anyone who opens the app. There is one undifferentiated kind of user: no accounts, no roles, no sign-in.

## User Stories

1. As a user, I want to add a new todo item with a short text description, so that I can capture a task I need to do.
2. As a user, I want to mark a todo item as complete or incomplete, so that I can track what's done.
3. As a user, I want to edit a todo item's text, so that I can fix a typo or update the task.
4. As a user, I want to delete a todo item, so that I can remove a task I no longer need.
5. As a user, I want to see how many todo items are still active, so that I know how much work is left.
6. As a user, I want to clear all completed items at once, so that I can tidy up my list without removing items one by one.
7. As a user, I want to filter the list to show all, active, or completed items, so that I can focus on what matters right now.

## Product Decisions

- No authentication: the app has no sign-in, no accounts, and no per-user identity — this overrides the organization's standard web-app SSO default, per the project's own idea.
- No data persistence: todo items live only in the browser's in-memory state for the current page view. Reloading, closing, or reopening the app always starts from an empty list; there is no backend, no database, and no browser-storage fallback.
- Single flat list: there is exactly one todo list, with no categories, folders, or multiple lists.
- A todo item carries exactly two fields: its text and a complete/incomplete status. No due dates, priorities, or notes.
- Editing an existing item's text is supported.
- Clearing all completed items in one action is supported.
- Filtering the visible list by all/active/completed is supported.

## Out of Scope

- User accounts, sign-in, or any per-user identity.
- Persisting todos across a page reload, in a backend database, or in browser storage (e.g. localStorage).
- Multiple todo lists, categories, folders, or tags.
- Due dates, priorities, reminders, or notes on a todo item.
- Sharing or collaborating on a list between multiple people.
- Notifications of any kind.

## Open Questions

None at this time.