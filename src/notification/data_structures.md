# Data Structures

## Notification (object)
+ id: 1 (number, required)
+ author (Pso, required)
+ title: Notification Title (string, required)
+ details: Notification Details (string, required)
+ `read_at`: `2019-01-01 23:34:40` (date-time, required)
+ `effective_date`: `2019-01-01 23:34:40` (date-time, required)
+ `expires_at`: `2019-01-01 23:34:40` (date-time, required)
+ `created_at`: `2019-01-01 23:34:40` (date-time, required)
+ `updated_at`: `2019-01-01 23:34:40` (date-time, required) 

## Create Notification (object)
+ `user_id`: 1 (number, optional) - required without raw_recipient
+ relation: user (enum[string], optional)
    - user
    - manager
    - hr
    - owner
    - admin
+ `raw_recipient`: user@email.com (string, optional) - required without user_id
+ title (Translatable Text, required)
+ details (Translatable Text, optional)
+ `effective_date`: `2019-01-01 23:34:40` (date-time, required)
+ `expires_at`: `2019-01-01 23:34:40` (date-time, required)
+ substitutions: `{@usr_first_name}`, `{$usr_first_name}` (array[string], optional)
+ transport: email (enum[string], required)
    - email
    - http
    - push

## Notification Count (object)
+ count: 10 (number, required)