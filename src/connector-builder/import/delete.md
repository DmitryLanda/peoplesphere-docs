### Delete [DELETE /connector-builder/imports/{id}]

## Delete data import
+ Parameters
    + id: 1 (number, required) 
        Id of the data Import.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target features>

+ Response 204 (application/json)
    
+ Response 400 (application/json)
              
    + Attributes (Response 400)

<!-- include(../../error_responses.md) -->
