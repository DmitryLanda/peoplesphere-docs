### Update [PATCH /connector-builder/exports/{alias}]

## Update export map
On creation alias for mapping will be generated automatically

By default all PSO objects from system will be exported using given mapping. There are few limitations:
 - Only latest record from fields marked as listOf will be used
 - The whole composite field cannot be selected in mapping. You must specify each item explicitly
 
**Note** this endpoint supports partial updates. You may specify ONLY property that need to be changed

**Note** this endpoint does not support complicated updates. To update nested relations - you need to put all required data
 
+ Parameters
    + alias: usr_report (required, string) 
        Id of the Export Mapping.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target features>
          
    + Attributes(Create Export)


+ Response 200 (application/json)

    + Attributes
        
        + data (Entity ID, fixed-type)
    
+ Response 400 (application/json)
              
    + Attributes (Response 400)

<!-- include(../error_responses.md) -->
