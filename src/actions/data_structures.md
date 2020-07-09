# Data Structures

## Action (object)
+ id: 123 (number, required)
+ author (User, required)
+ title: Medical Visit (string, required)
+ subtitle: You need to visit a doctor (string)
+ details: Some more info (string)
+ type (object, fixed-type)
    - id: 34 (number, required)
    - name: Leave Request (string, required)
    - alias: leave (string, required)
    - category: validation (string, required)
+ link: `http://example.com` (string)
+ status: active (enum[string], required)    
    - active
    - approved
    - pending
    - done
    - failed
    - rejected
+ payload (object)
+ icon: `http://example.com/image.png` (string)
+ effective_date: `2019-01-24 15:34:58` (date-time, required)
+ expires_at: `2019-03-21 09:34:58` (date-time, required)
+ created_at: `2019-01-24 12:23:00` (date-time, required)
+ updated_at: `2019-01-25 03:12:43` (date-time, required)
+ form_assignee (Summary) - Presented only if action type is form assigment. Shows base information about user assigned to form

## Create Action (object)
+ author_id: 123 (number) - only Super Admin can specify it. It will use currently authorized user instead
+ user_id: 123 (number) - Used if need to create action for Another user with `relation` population, this user will be used as base user to find relation 
+ title (Translatable Text, fixed-type)
+ subtitle (Translatable Text)
+ details (Translatable Text)
+ type_id: 45 (number, required) - Action type ID,list of available types you can get in /resources/action-types).
+ link: `http://example.com` (string)
+ icon: `http://example.com/image.png` (string) 
+ payload (enum[object])
    - (FormAssigmentPayload)
    - (LeaveRequestPayload)
+ effective_date: `2019-01-24 15:34:58` (date-time, required)
+ expires_at: `2019-03-21 09:34:58` (date-time, required)
+ population (array[Population Item], fixed-type)
+ substitutions: {$usr_first_name}, {$usr_last_name} (array[string]) 

## Update Action (object)
+ title (Translatable Text)
+ subtitle (Translatable Text)
+ details (Translatable Text)
+ type_id: 45 (number)  - Action type ID,list of available types you can get in /resources/action-types).
+ link: `http://example.com` (string)
+ status: active (enum[string])   
    - active   
    - pending
    - done
    - failed    
+ icon: `http://example.com/image.png` (string)
+ payload (enum[object])
    - (FormAssigmentPayload)
    - (LeaveRequestPayload)
+ effective_date: `2019-01-24 15:34:58` (date-time)
+ expires_at: `2019-03-21 09:34:58` (date-time)

## Approve Action (object)
+ comment: Any free text (string)
+ scheduled_at: `2019-03-21 09:34:58` (date-time) - has sense (and required) only for actions with `schedule` type. format `Y-m-d`

## Reject Action (object)
+ comment: Any free text (string)

## FormAssigmentPayload (object)
+ user_id: 123 (number, required)
+ form_instance_id: 321 (number, required)
+ mass_edit: false (boolean, required)
+ step: some_step (string, required)

## LeaveRequestPayload (object)
+ external_id: `some stringid` (string, required)
+ provider_name: `some name` (string, required)
+ company_name: `company name` (string, required)
+ approver_id: `some string id` (string, required)

