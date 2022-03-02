### Chart [GET /organizational-hierarchy{?pso-type,relation,group-by,start-pso,fields}]

## Get organization structure

Permissions: `org_chart.view`

+ Parameters
    + `pso-type`: `usr` (string, required) - Alias of pso type
    + relation: `owner` (string, optional) - Relation between pso
        + Default: `manager`
    + `group-by`: `relation` (enum[string], optional)
        + Members
            + relation
            + pso
    + `start-pso`: 123 (number, optional) - pso id to start building of chart
    + fields: `field_alias,other_field_alias` (array[string], optional) - List of field aliases for display on card

+ Request
    + Headers
        Accept: application/json
        X-Application-Version: <client-name>/<version>
        X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (array[Chart], fixed-type)
        + meta (Meta)

:[](../error_responses.md)