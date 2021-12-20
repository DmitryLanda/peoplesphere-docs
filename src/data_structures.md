# Data Structures

## `date-time` (string)

## date (string)

## mixed (string)

## Translatable Text (object)
+ en: Some text (required, string)
+ fr: Du texte (required, string)
+ de: Setwas Text (required, string)
+ es: Algún texto (required, string)

## Meta (object)
+ pagination (Pagination, required, fixed-type)

## Pagination (object)
+ total: 238 (number, required)
+ count: 25 (number, required)
+ per_page: 25 (number, required)
+ current_page: 2 (number, required)
+ total_pages: 10 (number, required)
+ links (object, required)
    + previous: `http://example.com/api/<endpoint>?page=1` (string, required)
    + next: `http://example.com/api/<endpoint>?page=3` (string, required)

## Response 400 (object)
+ message: Short description of error reason (string)
+ status_code: 400 (number)

## Response 401 (object)
+ message: Short description of error reason (string)
+ status_code: 401 (number)

## Response 403 (object)
+ message: Short description of error reason (string)
+ status_code: 403 (number)

## Response 404 (object)
+ message: Short description of error reason (string)
+ status_code: 404 (number)

## Response 406 (object)
+ message: Short description of error reason (string)
+ status_code: 406 (number)

## Response 422 (object)
+ message: Descriptive error message (string)
+ status_code: 422 (number)
+ errors (array)
    + Error message (string)
    + 
## Response 422 Field (object)
+ message: Descriptive error message (string)
+ status_code: 422 (number)
+ errors (array)
    + Error message (array[string])

## Response 500 (object)
+ message: Internal Error (string)
+ status_code: 500 (number)

## Entity ID (object)
+ id: 123 (number)
+ alias: can_be_null (string, optional)

## Population Item (object)
+ type: group (enum[string], required)
    - all
    - group
    - pso
    - relation
    - self
+ details (enum, nullable, required)
    - (object)
        - dynamic (boolean, required)
        - includes: group_a (array[string], required)
        - excludes: group_b, group_c (array[string], required)
    - (array[number])
    - (array[string])
    
## User (object)
+ id: 1 (number, required)
+ external_id: 1 (number, required)
+ first_name: John (string, required)
+ last_name: Snow (string, required)
+ username: john_snow (string, required)
+ professional_email: `jsnow@example.com` (string, required)
+ professional_mobile_phone: `00 33 1 40 00 00 00` (string, required)
+ professional_phone: `00 33 1 40 00 00 00` (string, required)
+ role: bastard, king (array[string], required)
+ is_active: true (boolean, required)
+ status: remote (string, required)
+ settings: [] (array, required)
+ user_photo: `http://example.com/images/1.jpg` (string, required)

# Language (object)
+ id: 1 (number, required)
+ alias: en (string, required)
+ name: English (string, required)

## SignatureWorkflow (object)
+ entity_id: 0 (number, required)
+ type (enum[string], required)
    - relation
    - user
+ step: 1 (number, required)

