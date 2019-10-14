### Trigger data export [POST /connector-builder/exports/{alias}/run]

## Start data export process using specified mapping

+ Parameters
    + alias: usr_report (required, string) 
        Id of the Export Mapping.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <comma separated features>
    
    + Attributes(Run Export)
    
+ Response 202 (application/json)

+ Response 400 (application/json)
              
    + Attributes (Response 400)

<!-- include(../error_responses.md) -->
