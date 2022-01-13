# Data Structures

## Global Search Request (object)
+ name: John Doe (string, optional) - filter PSOs by full name.
+ `pso-type`: usr (string, required) - if you need to get only single PSO type fata.
+ active: true (boolean, required) - if need to get only active PSOs.
+ values: string (array[string])- preliminary values for field conditions. list of values of fields on which our relation field depends
+ field: string (string, optional)- using field conditions for pso_relation. alias of relation field for whom we search values. and from which we will get conditional settings
+ formula: {usr_first_name} not_empty (string, optional) - search formula to filter PSOs by fields.

## Global Search Response (object)
+ pso_type (Pso Type, fixed-type)
+ data (array[Global Search PSO], fixed-type)
+ meta (Meta, fixed-type)

## Global Search PSO (object)
+ id: 1 (number, required)
+ status: default (string, required)
+ profile_form (Global Search Form, fixed-type)
+ fields (array[Global Search Field Summary], fixed-type)
+ display_value (array[string])

## Global Search Form (object)
+ id: 1 (number, required) - PSO Type Profile Form ID
+ name: User Profile (string, required) - PSO Type Profile Form name
+ description: ... (string, required) - PSO Type Profile Form description
+ is_active: true (boolean, required) - if need to get only active PSOs.
+ active_field (Global Search Field Summary, fixed-type)

## Global Search Field Summary (object)
+ id: 1 (number, required)
+ alias: usr_field_alias (string, required)
+ name: Field Name (string, required)
+ value: value (string, required)
+ raw_value: value (array[string], required)