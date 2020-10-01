### Common List [GET /document-generators{?title,pso-type,active,sort-by,sort-direction,page,per-page,no-pagination,should-be-signed}]

## **Get list of document generators matches specified filters**

+ Parameters
    + `title`: Document generator name to search (optional, string)
        Search by title. Non strict, case-insensitive.
    + `pso-type`: usr (optional, string)
        Pso Type trigram to filter document generators
    + `active`: true (optional, boolean)
        Field for filter exports by `is_active` column
    + `sort-by`: name (enum[name, created_at])
    + `sort-direction`: asc (enum[asc, desc])
    <!-- include(../pagination_parameters.md) -->
    + `should-be-signed`: false (optional, boolean) Get only signed generated documents

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes
        + data (array[Document Generator], fixed-type)
        + meta (Meta)

<!-- include(../error_responses.md) -->
