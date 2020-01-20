# Data Structures

## Document Generator Create
+ title (Translatable Text, required)
+ description (Translatable Text, required)
+ is_active: true (boolean, required)
+ should_be_signed: false (boolean, required)
+ storage_field: `alias of field` (string, required)
+ excluded_block_ids: `block001`, `block002` (array[string], optional)
+ target_population (array[Population Item], fixed-type)
+ template_id (number, required)
+ pso_type (Pso Type, optional, fixed-type)

## Document Generator Update
+ title (Translatable Text, required)
+ description (Translatable Text, required)
+ is_active: true (boolean, required)
+ should_be_signed: false (boolean, required)
+ storage_field: `alias of field` (string, required)
+ excluded_block_ids: `block001`, `block002` (array[string], optional)
+ target_population (array[Population Item], fixed-type)

## Document Generator (object)
+ title: `document generator name` (string, required)
+ description: `document generator description` (string, required)
+ is_active: true (boolean, required)
+ should_be_signed: false (boolean, required)
+ is_processing: false (boolean, required)
+ pso_type (Pso Type, optional, fixed-type)
+ template_id (number, required)
+ target_population (array[Population Item], fixed-type)
+ storage_field: `alias of field` (string, required)
+ excluded_block_ids: `block001`, `block002` (array[string], optional)