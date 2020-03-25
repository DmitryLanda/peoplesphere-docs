### Create [POST /connector-builder/exports]

## Create new export map
On creation alias for mapping will be generated automatically

By default all PSO objects from system will be exported using given mapping. There are few limitations:
 - Only latest record from fields marked as listOf will be used
 - The whole composite field cannot be selected in mapping. You must specify each item explicitly
 
+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target features>
          
    + Attributes(Create Export)

+ Response 201 (application/json)

    + Attributes
        
        + data (Entity ID, fixed-type)
    
+ Response 400 (application/json)
              
    + Attributes (Response 400)

<!-- include(../../error_responses.md) -->
