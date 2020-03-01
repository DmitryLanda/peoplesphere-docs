# Data Structures

## Field Summary (object)
+ id: 1 (number, required)
+ alias: usr_first_name (string, required)
+ value: John (string, required) - if field support multiple values it can be array 

## Pso Summary (object)
+ `first_name` (Field Summary, required)
+ `last_name` (Field Summary, required)
+ image (Field Summary, required)
+ is_active (Field Summary, required)
+ email (Field Summary, required)
+ `phone_number` (string, required)

## Pso Details (object)
+ id: 1 (number, required)
+ profile_form (object, optional)
    + id: 1 (number, required)
    + name: Profile Form (string, required)
    + description: Profile Form Description (string, required)
    + is_active: true (boolean, required)
    + active_field: null (nullable)
+ pso_type (Pso Type, optional)
+ categories (array, optional)
    + (object, required)
        + id: 1 (number, required)
        + name: Category Name (string, required)
        + alias: category_alias (string, required)
+ fields (FieldForm With Value, optional)

## Pso (object)
+ summary (Pso Summary, required)
+ pso (Pso Details, required)

## Update Pso Status (object)
+ status: `default`, `on_leave`, `on_remote`, `at_the_office` (enum[string], required)
+ active: true (boolean, required)