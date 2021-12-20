# Data Structures

## Field Create (object)

+ name (Translatable Text, required) - Name of field
+ type: string (string, required) - Data Type of field
+ privacy_level: public (enum[string], required) - Privacy Level of field
    - public
    - encrypted
    - extreme
+ category: usr_first_name (string, required)  - Category alias of field
+ is_active: true (boolean, required)  - Active flag of field
+ list: true (boolean, required) - should it be "list of" field
+ read_only: false (boolean, required) - Read Only flag of field
+ pso_type: usr (string, required) - Pso Type of field
+ options (array[Field Option Create], optional, fixed-type)  - Options of field
+ items (array[Field Create], optional, fixed-type) - Children fields of composite field
+ settings (array[Field Setting Create], optional, fixed-type)  - Settings of composite
+ position: 5 (number, optional) - Positions of field
+ alias: usr_first_name (string, optional)  - Unique alias of field
+ domains: usr_global (array[string], optional, fixed-type) - array of domain aliases
+ validation (Field Validation, required)
+ autocomplete_settings (Field Autocomplete Object, required)

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
+ validation (Field Validation, required)
+ autocomplete_settings (Field Autocomplete Object, required)

## Short field (object)

+ id: 1 (number, required)
+ name: Field Name (string, required)
+ alias: usr_first_name (string, required)
+ value: RU (string, required)
+ root_field (object, nullable)
    + id: 1 (number, required)
    + name: Field Name (string, required)
    + alias: usr_first_name (string, required)
    + value: RU (string, required)
    + root_field: null (nullable)

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
+ required: true (boolean, required) - deprecated setting
+ user_required: true (boolean, required) - whether field value required by user
+ system_required: true (boolean, required) - whether field value required by system
+ type (Data Type, optional, fixed-type)
+ category (Category, optional, fixed-type)
+ domains (array[Domain], optional, fixed-type)
+ privacy_level (Sensitivity, optional, fixed-type)
+ pso_type (Pso Type, optional, fixed-type)
+ items (array[Field], nullable, fixed-type)
+ options (array[Field Option], nullable, fixed-type) - List of options with possible (allowed) values.
+ settings (array[string], optional, fixed-type) - Common field settings
+ validation (Field Validation, required)
+ has_autocomplete_settings: true (boolean, required)
+ autocomplete_settings (object, required)
    + allow_extra_values: true (boolean, required)
    + autofill: true (boolean, required)
    + provider (Autocomplete provider, required)
    + parameters (array, required)
        + (object)
            + name: Name (string, required)
            + key: alias (string, required)
            + required: true (boolean, required)
            + value: value (string)
            + field (Short field, required)

## Field Option (object)

+ id: 198 (number, required)
+ name: Choose me! (string, required)
+ position: 9 (number, required)
+ value: 198 (string, required)
+ is_active: true (boolean, required)
+ is_selectable: true (boolean, required) - Can select on front this option (Using only in Hierarchy field))


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

## Field Validation (object)

+ type: regexp (string, required)
+ attributes (Empty Object)
+ value_example: string (string, required)
+ error_message (Translatable Text, required)

## Field Autocomplete Object (object)

+ allow_extra_values: true (boolean, required)
+ autofill: true (boolean, required)
+ provider: provider_alias (string, required)
+ parameters (array, required)
    + (object)
        + name: Name (string, required)
        + key: alias (string, required)
        + required: true (boolean, required)
        + value: value (string, nullable)
        + field: field_alias (string, nullable)

## Field Option (object)

+ id: 123 (number, optional)
+ name: Some option (string, required)
+ has_children: false (boolean, required)
+ is_selectable: true (boolean, optional)

# Empty Object (object)


## Get Field Option Filter (object)

+ pso-id (number) - Filter options by Pso 
+ parent: string (string) - Filter options by Parent Field Option ID 
+ name: string (string) - Filter options by name
+ values: string (array[string])