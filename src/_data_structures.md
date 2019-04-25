# Data Structures

## Translatable Text (object)
+ en: Some text for en locale (required, string)
+ fr: Some text for fr locale (required, string)
+ de: Some text for de locale (required, string)
+ es: Some text for es locale (required, string)

## Meta (object)
+ pagination (Pagination)

## Pagination (object)
+ total: 238 (number)
+ count: 25 (number)
+ per_page: 25 (number)
+ current_page: 2 (number)
+ total_pages: 10 (number)

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