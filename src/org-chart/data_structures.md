# Data Structures

## Chart Card Field (object)
+ `field_alias`: `some_alias` (string, required)
+ value: `2020-10-20` (required)
+ `data_type`: `date` (string, required)
+ `field_name`: `Some name` (string, required)

## Chart (object)
+ `pso_id`: 1 (number, required)
+ `parent_id`: 2 (number, required)
+ data: (array[Chart Card Field], required)
+ type: `real` (enum[string], required)
    + Members
        + `real`
        + `virtual`
+ children: 3 (number, required)
