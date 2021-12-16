### Common List [GET /features{?name,active,pso-type,include,sort-by,sort-direction,page,per-page,no-pagination}]

## **Get list of Feature Access rules matches specified filters**

+ Parameters
    + name: `name of role to search by` (string, optional)
    <!-- include(../pagination_parameters.md) -->

+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (array[Feature], fixed-type)
        + meta (Meta)

<!-- include(../error_responses.md) -->
