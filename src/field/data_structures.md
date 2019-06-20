# Data Structures

## Field (object)
+ id: 1 (number, required)
+ name: Field Name (string, required)
+ position: 5 (number, required)
+ alias: usr_first_name (string, required)
+ has_unique_data: false (boolean, required) - whether field requires values to be unique across system
+ has_value: true (boolean, required) - whether field has at least one value submitted
+ removable: false (boolean, required) - whether field can be removed from system
+ is_active: true (boolean, required)
+ list: false (boolean, required) - whether field can handle collection of values
+ read_only: false (boolean, required) - whether field value can be changed
+ required: true (boolean, required) - whether field value required by system
+ type (DataType, optional, fixed-type)
+ category (Category, optional, fixed-type)
+ domains (array[Domain], optional, fixed-type)
+ privacy_level (Sensitivity, optional, fixed-type)
+ pso_type (Pso Type, optional, fixed-type)
+ items (array[Field], nullable, fixed-type)
+ options (array[Field Option], nullable, fixed-type) - List of options with possible (allowed) values. 
+ settings (array[string], optional, fixed-type) - Common field settings

## Field Option (object)
+ id: 198 (number, required)
+ name: Chose me! (string, required)
+ position: 9 (number, required)
+ value: 198 (string, required)
+ is_active: true (boolean, required)

## Field Setting (object)
+ setting (Setting, required, fixed-type)
+ value (nullable, string, required)
