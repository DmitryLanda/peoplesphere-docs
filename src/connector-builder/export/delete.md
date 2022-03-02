### Delete [DELETE /connector-builder/exports/{alias}]

## Delete export map
On creation alias for mapping will be generated automatically

- It should NOT ALLOW to delete it if the status is processing (ask for message once it needed)
- It should drop ONLY map from DB. All generated files and logs must be kept
- It requires user to have connector_builder_export.delete.* or connector_builder_export.delete.<pso type alias> feature 
 
+ Parameters
    + alias: usr_report (required, string) 
        Alias of the Export Mapping.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target features>

+ Response 204 (application/json)
    
+ Response 400 (application/json)
              
    + Attributes (Response 400)

:[](../../error_responses.md)
