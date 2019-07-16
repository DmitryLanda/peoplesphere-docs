# Data Structures

## Trigger Create (object)
+ id: 1 (number, required)
+ name (Translatable Text, required)
+ description (Translatable Text, required)
+ pso_type: 1 (number, required)
+ start_at: `2019-04-24 11:47:47` (string, required)
+ till_at: `2019-04-24 11:47:47` (string, required)
+ executed_at: `2019-04-24 11:47:47` (string, required)
+ frequency: daily (string, required) - can be one of: daily,weekly,monthly,yearly
+ is_active: true (boolean, required)
+ conditions (array[Group Condition])
+ handles (array[Handler])

## Trigger Update (object)
+ id: 1 (number)
+ name (Translatable Text)
+ description (Translatable Text)
+ pso_type: 1 (number)
+ start_at: `2019-04-24 11:47:47` (string)
+ till_at: `2019-04-24 11:47:47` (string)
+ executed_at: `2019-04-24 11:47:47` (string)
+ frequency: daily (string) - can be one of: daily,weekly,monthly,yearly 
+ is_active: true (boolean)
+ conditions (array[Group Condition])
+ handles (array[Handler])

## Trigger (object)
+ id: 1 (number, required)
+ name Trigger title (string, required)
+ description Some text (string, required)
+ pso_type: 1 (number, required)
+ start_at: `2019-04-24 11:47:47` (string, required)
+ till_at: `2019-04-24 11:47:47` (string, required)
+ executed_at: `2019-04-24 11:47:47` (string, required)
+ frequency: daily (string, required)
+ is_active: true (boolean, required)
+ created_at: `2019-04-24 11:47:47` (string, required)
+ updated_at: `2019-04-24 11:47:47` (string, required)
+ conditions (array[Group Condition])
+ handles (array[Handler])

## Condition (object)
+ type: condition (string) - can be one of: condition,group 
+ condition: usr_email (string)
+ operator: `==` (string) - can be one of >,<,>=,<=,==,!=,empty,not_empty,today,anniversary_today,not_in,in,above,above_or_equal,below,below_or_equal,starts_with,ends_with,contains,not_contains,last_days,last_weeks,last_months,next_days,next_weeks,next_months,changed_after,is_changed
+ raw_value: `john.doe@example.com` (string, optional)
+ field_value: usr_additional_email (string, optional)

## Group Condition (object)
+ type: condition (string) - can be one of: condition,group 
+ combine_with: and (string) - can be one of: or,and
+ conditions (array[Condition])

## Handler (object)
+ id: 1 (number)
+ type: condition (string) - can be one of: notification,field_modification,action
+ sub_type: condition (string) - can be one of: todo,schedule,form 
+ payload: [] (array)