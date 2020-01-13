### List [GET /category{?pso-type,active,search,sort-by,sort-direction}]

Fetch list of fields categories

+ Parameters
    + `pso-type`: 123 (optional, number) 
        PSO type ID to filtering.
    + active: true (optional, boolean)
        To filtering fields categories by active state 
    + search: Category to search (optional, string) 
        Search by fields categories title. Non strict, case-insensitive.
    + `sort-by`: name (optional, enum[name, pso-type])
        Field to sort fields categories by.
        + Default: name
    + `sort-direction`: asc (optional, enum[asc, desc]) 
        Direction to order fields categories by.
        + Default: asc

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes

        + data (array[Category], fixed-type)
        + meta (Meta)

<!-- include(../error_responses.md) -->
