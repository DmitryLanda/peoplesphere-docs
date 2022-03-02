### List [GET /domains{?pso-type,active,search,sort-by,sort-direction}]

Fetch list of domains

+ Parameters
    + `pso-type`: 123 (optional, number) 
        PSO type ID to filtering.
    + active: true (optional, boolean)
        To filtering domains by active state 
    + search: Domains to search (optional, string) 
        Search by domain title. Non strict, case-insensitive.
    + `sort-by`: name (optional, enum[name, pso-type])
        Field to sort domains by.
        + Default: name
    + `sort-direction`: asc (optional, enum[asc, desc]) 
        Direction to order domains by.
        + Default: asc

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes

        + data (array[Domain], fixed-type)
        + meta (Meta)

:[](../error_responses.md)
