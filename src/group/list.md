### List [GET /groups{?pso-type,active,name,sort-by,sort-direction}]

Fetch list of groups

+ Parameters
    + `pso-type`: 123 (optional, number) 
        PSO type ID to filtering.
    + active: true (optional, boolean)
        To filtering groups by active state
    + name: Category to search (optional, string)
        Search by group title. Non strict, case-insensitive.
    + `sort-by`: name (optional, enum[name, pso-type, status, owner])
        Field to sort groups by.
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

        + data (array[Group], fixed-type)
        + meta (Meta)

<!-- include(../error_responses.md) -->
