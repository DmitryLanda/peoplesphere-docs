### Create [POST /connector-builder/imports]

## Create new data import
+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target features>
          
    + Attributes(Create Data Import)

+ Response 201 (application/json)

    + Attributes
        
        + data (Data Import, fixed-type)
    
+ Response 400 (application/json)
              
    + Attributes (Response 400)

:[](../../error_responses.md)
