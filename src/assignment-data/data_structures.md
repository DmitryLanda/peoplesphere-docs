# Data Structures

## AssignmentField (Field)
+ is_locked: true (boolean), required - whether field can be detached from Form
+ values: 123 (string, required)
+ value_details (mixed, required, nullable) - user friendly value representation. Actual structure depends on field type
+ values_count: 1 (number, required) - number of values field has for current user. Meaningful only when `list` is true
+ assignment_settings (array[string], fixed-type)  - Settings related to this specific Field and Form 
+ assignment_permissions (array[string], fixed-type) - Permissions related to this specific Field and Form 
+ access_permissions (array[string], required, fixed-type) - Access permissions specific for current user

## AssignmentFieldSetting (object)
+ id: 456 (number)
+ form_instance_id: 1 (number)
+ setting_id: 123 (number)
+ value: some value (string)

## AssignmentData (object)
+ id: 1 (number)
+ name: Assignment Name (string, required)
+ description: Assignment Description (string, required)
+ form_id: 1 (number, required)
+ is_active: true (boolean, required)
+ removable: true (boolean, required)
+ can_edit: true (boolean, required)
+ effective_date: `2019-01-01 23:34:40` (date-time)
+ approval_scheduled_date: `2019-01-01 23:34:40` (date-time)
+ fields (array[AssignmentField], fixed-type)
+ settings (array[AssignmentFieldSetting], fixed-type)

## AssignmentData Submit (object)
+ temporary: true (boolean, optional)
+ approval_scheduled_date: `2019-01-01 23:34:40` (date-time, optional)
+ data (array[Field Value Data Create], fixed-type)

## AssignmentData Mass Edit (object)
+ form_instance (array[AssignmentData], fixed-type)
+ assignee (AssignmentData Mass Edit Assignee, fixed-type)

## AssignmentData Mass Edit Assignee (object)
+ id: 1 (number)
+ first_name: Assignment Name (string, required)
+ last_name: Assignment Name (string, required)
+ pso_type: usr (string, required)

## AssignmentData Mass Edit Submit (object)
+ temporary: true (boolean, optional)
+ approval_scheduled_date: `2019-01-01 23:34:40` (date-time, optional)
+ data (array[AssignmentData Mass Edit Submit Item], fixed-type)

## AssignmentData Mass Edit Submit Item (object)
+ user_id: 1 (number, required)
+ data (array[Field Value Data Create], fixed-type)

