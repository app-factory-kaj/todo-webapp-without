Feature: Todo list

  @story-1
  Rule: A user can add a new todo item with a text description

    Scenario: Adding an item to an empty list
      Given the todo list is empty
      When Jamie adds a todo "Buy milk"
      Then the list has exactly one item, "Buy milk", shown as incomplete

    @negative
    Scenario: An empty description cannot be added
      Given the todo list is empty
      When Jamie tries to add a todo with no text
      Then the list still has no items

  @story-2
  Rule: A user can mark a todo item as complete or incomplete

    Scenario: Completing an active item
      Given Jamie has added a todo "Write report"
      When Jamie marks "Write report" as complete
      Then "Write report" is shown as complete

    Scenario: Reopening a completed item
      Given Jamie has added a todo "Write report" and marked it complete
      When Jamie marks "Write report" as incomplete
      Then "Write report" is shown as incomplete

  @story-3
  Rule: A user can edit an existing todo item's text

    Scenario: Fixing a typo in an item
      Given Jamie has added a todo "Buy milkk"
      When Jamie edits that item's text to "Buy milk"
      Then the list has exactly one item, "Buy milk"

    @negative
    Scenario: Clearing an item's text during edit is refused
      Given Jamie has added a todo "Buy milk"
      When Jamie tries to edit that item's text to be empty
      Then the item's text is still "Buy milk"

  @story-4
  Rule: A user can delete a todo item

    Scenario: Removing an item they no longer need
      Given Jamie has added a todo "Call plumber"
      When Jamie deletes "Call plumber"
      Then the list has no items named "Call plumber"

  @story-5
  Rule: A user can see how many todo items are still active

    Scenario: The active count updates as items are completed
      Given Jamie has added the todos "Buy milk" and "Write report", both incomplete
      When Jamie marks "Write report" as complete
      Then the active count shows 1 remaining item

  @story-6
  Rule: A user can clear all completed items at once

    Scenario: Clearing completed items leaves the active ones
      Given Jamie has added "Buy milk" incomplete and "Write report" complete
      When Jamie clears all completed items
      Then the list has exactly one item, "Buy milk"

    Scenario: Clearing completed items when none are complete does nothing
      Given Jamie has added "Buy milk" and "Call plumber", both incomplete
      When Jamie clears all completed items
      Then the list still has exactly 2 items

  @story-7
  Rule: A user can filter the visible list by all, active, or completed

    Scenario: Filtering to active items only
      Given Jamie has added "Buy milk" incomplete and "Write report" complete
      When Jamie filters the list to "Active"
      Then only "Buy milk" is shown

    Scenario: Filtering to completed items only
      Given Jamie has added "Buy milk" incomplete and "Write report" complete
      When Jamie filters the list to "Completed"
      Then only "Write report" is shown

    Scenario: Switching back to all items
      Given Jamie has added "Buy milk" incomplete and "Write report" complete
      When Jamie filters the list to "All"
      Then both "Buy milk" and "Write report" are shown

  Rule: The todo list does not persist across a page reload

    Scenario: Reloading the page starts from an empty list
      Given Jamie has added the todos "Buy milk" and "Write report"
      When Jamie reloads the page
      Then the todo list is empty
