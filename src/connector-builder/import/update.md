### Update [PATCH /connector-builder/imports/{id}]

## Update data import

+ Parameters
    + id: 1 (number, required) 
        Id of the Data Import.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target features>
          
    + Attributes(Update Data Import)


+ Response 200 (application/json)

    + Attributes
        
        + data (Data Import, fixed-type)
    
+ Response 400 (application/json)
              
    + Attributes (Response 400)

:[](../../error_responses.md)
