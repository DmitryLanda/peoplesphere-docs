:[](data_structures.md)

# Group Actions
Actions it is a way to interact with users and provide them tasks that need to be completed.

## Actions [/actions]

## Action categories
See `GET /resources/action-types` API

Every action has a type. Action types also grouped by categories. 
So we may apply specific processing to actions based on categories and types.

For now we have following **categories**:
 - form. Types are: `form_assignment` 
 - validation.  Types are: `expense`, `recruiting`, `leave`
 - link. Types are: `link`
 - todo. Types are: `todo`, `certificate`
 - schedule. Types are: `schedule`

## Action types
 - `form_assignment` Kind of reminder to fill specific assignment. Will have assignment details in payload property.
 - `link` Action with a link to external URL (resource). No specific processing
 - `todo`, `schedule` Kind of task that user need to complete. Applies specific handling
 - `certificate`, `expense`, `recruiting` Kind of reminder. No specific processing
 - `leave` Validation action that applies specific processing

## Action Processing
#### form_assignment 
Should be used to give user a way to complete assignment. 
Payload will provide additional details to perform an API call to get form assignment

**Payload structure**:
 - `user_id` integer, required. ID of user that assignment originally assigned to. It can be different from action user because of workflow. 
    The user from payload always points on user form originally assigned to
 - `form_instance_id` integer, required. ID of form assignment that user need to complete
 - `mass_edit` - boolean, required. Shows if the assignment supports mass edit feature or not
 - `step` string, required. The current workflow step that need to be complete

#### link
No specific processing

#### todo, schedule
Allows to mark it as done or rejected. If rejected user need to put a comment. See `PATCH /actions` API

#### certificate,expense, recruiting
No specific processing

#### leave
Validation action that applies specific processing and used to syncronize leave requests with external tool.

**Payload structure**:
 - `external_id` string. Action ID from external tool. Used during synchronization to match the action in external tool
 - `provider_name` string. Used during synchronization
 - `company_name` string. Used during synchronization
 - `approver_id` string. Used during synchronization. Represents the person that need to confirm the leave request

## Actions created by system
In some cases to organize the process and to help users to interact with system it can create and assign actions automatically 
(based on internal rules and state)

#### New Form Assignment created
When new assignment created it will create an action with assignment target user as action assignee. 
Assignment creator will be used as action author.
Form name will be used as action title. Hardcoded message will be used as subtitle.
Lifetime will be 100 years (almost eternity)

#### Form Assignment progressed to next user in workflow
When assignment has workflow and the current step completed (data was submitted). It will create an action for the user that need to handle next step. Old actions will be completed (closed)
It wIll create create an action with assignment target user as target. 
Assignment creator will be used as action author.
Form name will be used as action title. Hardcoded message will be used as subtitle.
Lifetime will be 100 years (almost eternity)

:[](list.md)
:[](show.md)
:[](count.md)
:[](create.md)
:[](update.md)
:[](approve.md)
:[](reject.md)
:[](delete.md)
