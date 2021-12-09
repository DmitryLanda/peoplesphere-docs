# Data Structures

## ActionGroup (object)
+ id: 123 (number, required)
+ alias: `action_group_alias` (string, required)
+ title: `Action group name` (string, required)
+ status: complete (enum[string], required)
    - not_start
    - in_progress
    - complete
+ expires_at: `2021-01-01` (date-time, required)
+ due_date: `2021-01-01` (date-time, required)
+ users_amount: 18 (number, required)
+ category: 
    - id: 1 (number, required)
    - alias: `category_alias` (string, required)
    - name: `Category name` (string, required)

## Workflow (object)
+ step: 1 (number, required)
+ relation: `manager` (string, required)
+ relation_name: `Manager` (string, required)
+ expires_at: `2021-01-01` (date-time, required)
+ due_date: `2021-01-01` (date-time, required)
+ status: done (enum[string], required)
  - active
  - inactive
  - approved
  - pending
  - done
  - failed
  - rejected
  - outdated
+ assigned_users: (array[User], required)
+ delegated_from: (array[User], required)

## ActionGroupOwner (object)
+ action_group_id: 123 (number, required)
+ owner: (User, required)
+ status: complete (enum[string], required)
  - not_start
  - in_progress
  - complete
  - refused
+ expires_at: `2021-01-01` (date-time, required)
+ due_date: `2021-01-01` (date-time, required)
+ workflow: (array[Workflow], required)

## ActionGroupUserStats (object)
+ user: (User, required)
+ action_statistic:
    - total: 5 (number, required)
    - completed: 1 (number, required)
    - in_progress: 3 (number, required)
    - not_started: 2 (number, required)

## ActionGroupByUser (object)
+ id: 123 (number, required)
+ alias: `action_group_alias` (string, required)
+ title: `Action group name` (string, required)
+ status: complete (enum[string], required)
  - not_start
  - in_progress
  - complete
+ expires_at: `2021-01-01` (date-time, required)
+ due_date: `2021-01-01` (date-time, required)
+ users_amount: 18 (number, required)
+ category:
  - id: 1 (number, required)
  - alias: `category_alias` (string, required)
  - name: `Category name` (string, required)
+ workflow: (array[Workflow], required)

## ActionGroupInfo (object)
+ title: `Action group name` (string, required)
+ actions_count: 3 (number, required)
+ completed_percentage: 66 (number, required)
+ statuses:
  - active: 3 (number, optional)
  - approved: 4 (number, optional)
  - pending: 6 (number, optional)
  - failed: 10 (number, optional)
  - rejected: 16 (number, optional)
  - canceled: 24 (number, optional)
  - outdated: 34 (number, optional)
  - done: 3 (number, optional)
+ expires_at: `2021-01-01` (date-time, required)
+ due_date: `2021-01-01` (date-time, required)
+ users_amount: 18 (number, required)