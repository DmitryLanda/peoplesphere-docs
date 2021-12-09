# Data Structures

## Operator (object)
+ name: Is equal to (string, required)
+ operator: `==` (string, required)
+ type: binary (enum[string], fixed-type)
    - binary
    - unary

## DataType Operator
+ data_type: number (string, required)
+ comparison_operators (array[Operator], fixed-type)
+ arithmetic_operators (array[Operator], fixed-type)

## FieldItemOperator (object)
+ data_type: number (string, required)
+ condition_operators (array[Operator], fixed-type)
+ action_operators (array[Operator], fixed-type)
