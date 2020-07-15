### Show [GET /connector-builder/exports/{alias}{?include}]

## Fetch specified export map

+ Parameters
    + alias: usr_report (required, string) 
        Alias of the Export Mapping.
    + include: pso_type,language (optional, enum[pso_type, mapping, mapping.root_field, language, owner, population])
        The way to include relations in the response. Target relations can be comma separated if you want to get few of them.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <comma separated features>

+ Response 200 (application/json)

    + Attributes
    
        + data (Export, fixed-type)

<!-- include(../../error_responses.md) -->
