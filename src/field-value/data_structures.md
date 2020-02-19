# Data Structures

## Field Value Create (object)
+ data (array[Field Value Data Create], optional, fixed-type)

## Field Value Update (object)
+ data (array[Field Value Data Update], optional, fixed-type)

## Field Value (object)
+ id: 1 (number, required)
+ field: 123 (number, required)
+ values: some value (array[string], required)
+ `created_at`: `2019-01-24 12:23:00` (date-time, required)
+ `updated_at`: `2019-01-25 03:12:43` (date-time, required)
+ `value_details`: some value (string, required)
+ `answers_count`: 1 (number, required) - useful for "list of" fields
+ batch: `d9438793-ce22-483d-8a80-9250b7f341fd` (string, optional)

## Field Value Data Create (object)
+ `field_id`: 123 (number, optional) - required without field_alias
+ `field_alias`: usr_first_name (string, optional) - required without field_id
+ value: some value (string, optional) - empty value will clear answer
+ `answer_id`: 123 (number, optional) - needs if you try to update existed answer
+ batch: `d9438793-ce22-483d-8a80-9250b7f341fd` (string, optional) - needs if you works with composite list of fields
+ action: create (enum[string], required)
    - create
    - update
    - delete

## Field Value Data Update (object)
+ value: some value (array[string], optional) - empty value will clear answer
+ `value_id`: 123 (number, required) - needs if you try to update existed answer
