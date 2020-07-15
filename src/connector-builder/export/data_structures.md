# Data Structures

## Export (object)
+ id: 132 (number)
+ alias: my_widget (string, required)
+ name: Export mapping Name (string, required)
+ description: Some description (string, required)
+ pso_type (Pso Type, optional, fixed-type)
+ is_active: true (boolean, required)
+ is_locked: false (boolean)
+ status: new (enum[string], required)
    - new
    - processing
    - done
    - failed
+ report_file: filename.csv (string)    
+ mapping (array[Export Map], required, fixed-type)
+ language (required, Language)
+ owner (User, optional, fixed-type)
+ conditions (array[Group Condition], fixed-type)
+ permissions (object)
    + can_edit: true (required, boolean)
    + can_delete: false (required, boolean)
    + can_deactivate: true (required, boolean)
+ population (array[Population Item], required, fixed-type)
+ created_at: `2019-01-01 23:34:40` (date-time, required)
+ updated_at: `2019-01-01 23:34:40` (date-time, required)

## Create Export (object)
+ name (Translatable Text, required, fixed-type)
+ description (Translatable Text, required, fixed-type)
+ pso_type: usr (string, required)
+ is_active: true (boolean, required)
+ language: en (required, string)
+ mapping (array[Export Map Request], required, fixed-type)
+ conditions (array[Group Condition], fixed-type)
+ population (array[Population Item], required, fixed-type)

## Update Export (object)
+ name (Translatable Text, optional, fixed-type)
+ description (Translatable Text, optional, fixed-type)
+ is_active: true (boolean, required)
+ language: en (optional, string)
+ mapping (array[Export Map Request], optional, fixed-type)
+ conditions (array[Group Condition], fixed-type)
+ population (array[Population Item], fixed-type)

## Export Map (object)
+ internal: 123 (required, number)
+ external: Active  (required, string)
+ root_field (Field, optional, fixed-type)

## Export Map Request (object)
+ internal: 123 (required, number)
+ external: Active  (required, string)

## Export Log (object)
+ id: 123 (number, required)   
+ started_at: `2019-01-01 23:34:40` (date-time, required)
+ finished_at: `2019-01-01 23:34:40` (date-time, required)
+ result: ok (required, enum[string])
    - ok
    - failed
+ `log_file`: logs/numeric_scale-181220190931.log (string, required)
+ `report_file`: numeric_scale-181220190931.csv (string, optional)
+ user (User, required)

## Run Export (object)
+ output_format: csv (required, enum[string])
    - csv
    - xls
