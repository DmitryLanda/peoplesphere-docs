# Data Structures

## Field Create (object)
+ name (Translatable Text, required)
+ type: string (string, required)
+ privacy_level: public (enum[string], required) 
    - public 
    - encrypted 
    - extreme
+ category: usr_first_name (string, required)
+ is_active: true (boolean, required)
+ list: true (boolean, required) - should it be "list of" field
+ read_only: false (boolean, required)
+ pso_type: usr (string, required)
+ options (array[Field Option Create], optional, fixed-type)
+ items (array[Field Create], optional, fixed-type)
+ settings (array[Field Setting Create], optional, fixed-type)
+ position: 5 (number, optional)
+ alias: usr_first_name (string, optional)
+ domains: usr_global (array[string], optional, fixed-type) - array of domain aliases

## Field Update (object)
+ id: 1 (number, required)
+ name (Translatable Text, optional)
+ type_id: 123 (string, optional)
+ privacy_level: public (enum[string], required) 
    - public 
    - encrypted 
    - extreme
+ category: usr_first_name (string, optional)
+ is_active: true (boolean, optional) - for admin users only.
+ list: true (boolean, optional) - should it be "list of" field
+ read_only: false (boolean, optional
+ options (array[Field Option Update], optional, fixed-type)
+ items (array[Field Update], optional, fixed-type)
+ settings (array[Field Setting Update], optional, fixed-type)
+ position: 5 (number, optional)
+ alias: usr_first_name (string, optional)
+ domains: usr_global (array[string], optional, fixed-type) - array of domain aliases

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
+ type (Data Type, optional, fixed-type)
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

## Field Option Create (object)
+ name (Translatable Text, required)
+ position: 1 (number, required)
+ is_active: true (boolean, required)

## Field Option Update (object)
+ id: 123 (number, optional)
+ name (Translatable Text, optional)
+ position: 1 (number, optional)
+ is_active: true (boolean, optional)

## Field Setting (object)
+ setting (Setting, required, fixed-type)
+ value (nullable, string, required)

## Field Setting Create (object)
+ setting_id: 123 (number, required)
+ value: text (string, required)

## Field Setting Update (object)
+ setting_id: 123 (number, optional)
+ setting_alias: setting_alias (string, optional)
+ value: text (string, optional)
