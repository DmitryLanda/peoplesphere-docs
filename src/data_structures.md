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

## Response 500 (object)
+ message: Internal Error (string)
+ status_code: 500 (number)

## Entity ID (object)
+ id: 123 (number)
+ alias: can_be_null (string, optional)
