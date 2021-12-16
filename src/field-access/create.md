### Create [POST /field-access-rules]

## **Create new field access rule**

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>
          
    + Attributes(Field Access Create)

+ Response 201 (application/json)

    + Attributes
        
        + data (Field Access, fixed-type)
    
+ Response 400 (application/json)
              
    + Attributes (Response 400)

<!-- include(../error_responses.md) -->
