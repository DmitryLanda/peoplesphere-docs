### Validate [POST /connector-builder/imports/{id}/validate]

## Upload and validate filled template template
Upload filled .xls template and plan it to validate. It not available if any other file in process(validation/submission) at the moment.  

+ Parameters
    + id: 1 (required, number) 
        Id of the Data Import.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <comma separated features>
          
    + Attributes(File Create)

+ Response 201 (application/json)

    + Attributes
        
        + data (Data Import, fixed-type)

:[](../../error_responses.md)
