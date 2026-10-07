screen TodoList "Add, track and clean up today's to-dos — nothing here survives a reload"
  navbar "Todo"
  heading "My Todos"
  row
    input "What needs doing?"
    button "Add" primary
  tabs "All | Active | Completed"
  card "3 items left"
  table "Done | Task | Actions"
    row " | Buy milk | Edit · Delete"
    row "x | Write report | Edit · Delete"
    row " | Call plumber | Edit · Delete"
  row
    text "3 of 4 remaining"
    right
    button "Clear completed"

flow "Manage todos"
  description "Anyone who opens the app adds, completes, edits, deletes and filters their todo list for the current page view"
  TodoList
