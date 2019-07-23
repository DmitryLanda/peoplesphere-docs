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
    - new
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

## Create Action (object)
+ author_id: 123 (number) - only Super Admin can specify it. It will use currently authorized user instead 
+ title (Translatable Text, fixed-type)
+ subtitle (Translatable Text)
+ details (Translatable Text)
+ type_id 45 (number, required)
+ link: `http://example.com` (string)
+ status: active (enum[string], required)
    - new
    - active
    - approved
    - pending
    - done
    - failed
    - rejected
+ icon: `http://example.com/image.png` (string)
+ relation: usr_custom_manager (string)
    if presented action will be created for the PSO mentioned as specified relation for `user_id` 
+ payload (object)
+ effective_date: `2019-01-24 15:34:58` (date-time, required)
+ expires_at: `2019-03-21 09:34:58` (date-time, required)
+ population (array[Population Item], fixed-type)

## Update Action (object)
+ title (Translatable Text)
+ subtitle (Translatable Text)
+ details (Translatable Text)
+ type_id: 45 (number)
+ link: `http://example.com` (string)
+ status: active (enum[string])
    - new
    - active
    - approved
    - pending
    - done
    - failed
    - rejected
+ icon: `http://example.com/image.png` (string)
+ relation: usr_custom_manager (string)
    if presented action will be created for the PSO mentioned as specified relation for `user_id` 
+ payload (object)
+ effective_date: `2019-01-24 15:34:58` (date-time)
+ expires_at: `2019-03-21 09:34:58` (date-time)
+ comment: Any free text (string) - required if status changed to `rejected`. In other cases it is optional
+ population (array[Population Item], fixed-type)

## Approve Action (object)
+ comment: Any free text (string)
+ scheduled_at: `2019-03-21 09:34:58` (date-time) - has sense only for actions with `schedule` type

## Reject Action (object)
+ comment: Any free text (string)
