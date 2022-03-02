### Common List [GET /field-access-rules{?name,active,pso-type,include,sort-by,sort-direction,page,per-page,no-pagination}]

## **Get list of field access rules matches specified filters**

+ Parameters
    + name: `name of role to search by` (string, optional)
    + active: true (boolean, optional)
    + `pso-type`: usr (string, optional)
    + include: modules (string, optional)
        The way to include relations in the response. Target relations can be comma separated if you want to get few of them
    + `sort-by`: name (enum[name, pso-type, relation, privacy-level, status])
    + `sort-direction`: asc (enum[asc, desc])
    :[](../pagination_parameters.md)

+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (array[Field Access], fixed-type)
        + meta (Meta)

:[](../error_responses.md)
