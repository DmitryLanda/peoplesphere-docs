# Data Structures

## Group Create (object)
+ pso_type: usr (string, required)
+ owner: 5 (required, number) - Id of PSO.
+ name (Translatable Text, required)
+ description (Translatable Text, optional)
+ alias: usr_global (string, optional)
+ is_active: true (boolean, optional)
+ specific_psos  (array[number])
+ conditions (array[Group Condition], fixed-type)

## Group Update (object)
+ owner: 5 (optional, number) - Id of PSO.
+ name (Translatable Text, optional)
+ description (Translatable Text, optional)
+ alias: usr_global (string, optional)
+ is_active: true (boolean, optional)
+ is_editable: true (boolean, optional) - for admin only
+ is_removable: true (boolean, optional) - for admin only
+ specific_psos  (array[number])
+ conditions (array[Group Condition], fixed-type)

## Group (object)
+ id: 32 (number, required)
+ name: Group name (string, required)
+ description: ... (string, required)
+ alias: usr_group (string, required)
+ status: ok (enum[string], required)
    - ok
    - pending
+ is_active: true (boolean, required)
+ created_at: `2019-04-24 11:47:47` (string, required)
+ updated_at: `2019-04-24 11:47:47` (string, required)
+ processed_at: `2019-04-24 11:47:47` (string, optional)
+ pso_type (Pso Type, optional, fixed-type)
+ owner (User, optional, fixed-type)
+ specific_psos (array[Pso], required)
+ conditions (array[Group Condition], required)
+ permissions (array, optional)
    - (object)
        - can_edit: true (boolean, required)
        - can_remove: true (boolean, required)