### Get Export Logs [GET /connector-builder/exports/{alias}/logs]

## Fetch export process logs for specified mapping

+ Parameters
    + alias: usr_report (required, string) 
        Id of the Export Mapping.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <comma separated features>
    
+ Response 200 (application/json)

    + Attributes

        + data (array[Export Log], fixed-type)
        + meta (Meta)

<!-- include(../../error_responses.md) -->
