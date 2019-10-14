# Data Structures

## Export (object)
+ alias: my_widget (string, required)
+ name: Export mapping Name (string, required)
+ description: Some description (string, required)
+ pso_type (Pso Type, optional, fixed-type)
+ is_active: true (boolean, required)
+ status: new (enum[string], required)
    - new
    - processing
    - done
    - failed
+ mapping (array[Export Map], required, fixed-type)
+ language (required, Language)
+ permissions (object)
    + edit: true (required, boolean)
    + delete: false (required, boolean)
    + deactivate: true (required, boolean)
+ created_at: `2019-01-01 23:34:40` (date-time, required)
+ updated_at: `2019-01-01 23:34:40` (date-time, required)
+ generated_at: `2019-01-01 23:34:40` (date-time, required)

## Create Export (object)
+ name (Translatable Text, required, fixed-type)
+ description (Translatable Text, required, fixed-type)
+ pso_type: usr (string, required)
+ is_active: true (boolean, required)
+ language: en (required, string)
+ mapping (array[Export Map Request], required, fixed-type)

## Update Export (object)
+ name (Translatable Text, optional, fixed-type)
+ description (Translatable Text, optional, fixed-type)
+ is_active: true (boolean, required)
+ language: en (optional, string)
+ mapping (array[Export Map Request], optional, fixed-type)

## Export Map (object)
+ internal: field_alias (required, string)
+ external: Active  (required, string)
+ root_field (Field, optional, fixed-type)

## Export Map Request (object)
+ internal: field_alias (required, string)
+ external: Active  (required, string)

## Export Log (object)
+ id: 123 (number, required)
+ started_at: `2019-01-01 23:34:40` (date-time, required)
+ finished_at: `2019-01-01 23:34:40` (date-time, required)
+ result: ok (required, enum[string])
    - ok
    - failed
+ `log_file`: http://localhost/files/reports/123/20190325_150845.log (string, required)
+ `report_file`: http://localhost/files/reports/123/20190325_150845.csv (string, optional)
+ user (User, required)

## Run Export (object)
+ output_format: csv (required, enum[string])
    - csv
    - xls
