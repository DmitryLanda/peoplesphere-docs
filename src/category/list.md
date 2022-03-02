### List [GET /category{?pso-type,active,search,include,sort-by,sort-direction,page,per-page,no-pagination}]

Fetch list of fields categories

+ Parameters
    + `pso-type`: usr (optional, string) 
        PSO type alias to filtering. Strict, case-insensitive
    + active: true (optional, boolean)
        To filtering fields categories by active state 
    + search: Category to search (optional, string) 
        Search by fields categories title. Non strict, case-insensitive.
    + include: pso_type (optional, enum[pso_type])
        The way to include relations in the response.
    + `sort-by`: name (optional, enum[name, pso-type])
        Field to sort fields categories by.
        + Default: name
    + `sort-direction`: asc (optional, enum[asc, desc]) 
        Direction to order fields categories by.
        + Default: asc
    :[](../pagination_parameters.md)

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

:[](../error_responses.md)
