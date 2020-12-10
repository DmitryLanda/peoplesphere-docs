# Data Structures

## Document Template Block Condition (object)
+ field: `employment_contract_type` (string, required)
+ comparison: `=` (string, required)
+ value: `internship` (string, required)

## Document Template Block (object)
+ id: `block001` (string, required)
+ content: `Some stuff with <b>html</b>` (string, required)
+ conditions (array[Document Template Block Condition], required, fixed)
+ type `common` (enum[string], required)
    - common
    - header
    - footer
+ position: 1 (number, required)

## Document Template (object)
+ title: `document template name` (string, required)
+ description: `document template description` (string, required)
+ is_active: true (boolean, required)
+ pso_type (Pso Type, required, fixed-type)
+ blocks (array[Document Template Block], required, fixed)

## Document Template Update (object)
+ title (Translatable Text, required)
+ description (Translatable Text, required)
+ is_active: true (boolean, required)
+ blocks (array[Document Template Block], required, fixed)

## Document Template Create (object)
+ title (Translatable Text, required)
+ description (Translatable Text, required)
+ is_active: true (boolean, required)
+ blocks (array[Document Template Block], required, fixed)

## Document Template Preview (object)
+ data (array[Document Template Block], required, fixed)