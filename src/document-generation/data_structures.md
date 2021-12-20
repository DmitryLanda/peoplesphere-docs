# Data Structures

## Document Generator Create
+ title (Translatable Text, required)
+ description (Translatable Text, required)
+ is_active: true (boolean, required)
+ should_be_signed: false (boolean, required)
+ storage_field: `alias of field` (string, required)
+ target_population (array[Population Item], fixed-type)
+ effective_date: `2019-01-01` (date)
+ template_id (number, required)
+ pso_type (Pso Type, optional, fixed-type)
+ signature_workflow (array[SignatureWorkflow], required)
+ blocks (array[Document Generator Block Create], required, fixed)

## Document Generator Update
+ title (Translatable Text, required)
+ description (Translatable Text, required)
+ is_active: true (boolean, required)
+ should_be_signed: false (boolean, required)
+ storage_field: `alias of field` (string, required)
+ target_population (array[Population Item], fixed-type)
+ effective_date: `2019-01-01` (date)
+ template_id (number, required)
+ signature_workflow (array[SignatureWorkflow], required)
+ blocks (array[Document Generator Block Create], required, fixed)

## Document Generator (object)
+ id: `document generator id` (number, required)
+ title: `document generator name` (string, required)
+ description: `document generator description` (string, required)
+ is_active: true (boolean, required)
+ status: new (enum[string])
    - new
    - processing
    - requires_signature
    - signing_doc
    - failed
    - done
+ should_be_signed: false (boolean, required)
+ is_processing: false (boolean, required)
+ excluded_block_ids: `block001`, `block002` (array[string], optional)
+ signature_expiration_date: 2019-01-01 (date)
+ effective_date: 2019-01-01 (date)
+ pso_type (Pso Type, fixed-type)
+ template (Document Template, required)
+ target_population (array[Population Item], fixed-type)
+ storage_field: `alias of field` (string, required)
+ blocks (array[Document Template Block], required, fixed)
+ signature_workflow (SignatureWorkflow Item, optional)