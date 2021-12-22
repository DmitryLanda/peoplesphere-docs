### Common List [GET /feature-access-rules{?name,active,pso-type,include,sort-by,sort-direction,page,per-page,no-pagination}]

## **Get list of Feature Access rules matches specified filters**

+ Parameters
    + name: `name of role to search by` (string, optional)
    + active: true (boolean, optional)
    + pso-type: `pso type alias` usr (string, optional)
    + include: modules (string, optional)
        The way to include relations in the response. Target relations can be comma separated if you want to get few of them
    + sort-by: name (enum[name, pso-type, relation, privacy-level, status, id])
    + sort-direction: asc (enum[asc, desc])
    <!-- include(../pagination_parameters.md) -->

+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (array[Feature Access List], fixed-type)
        + meta (Meta)

<!-- include(../error_responses.md) -->
