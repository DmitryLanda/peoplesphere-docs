### Create [POST /feature-access-rules]

## **Create new Feature Access rule**

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>
          
    + Attributes(Feature Access Create)

+ Response 201 (application/json)

    + Attributes
        
        + data (Feature Access, fixed-type)
    
+ Response 400 (application/json)
              
    + Attributes (Response 400)

<!-- include(../error_responses.md) -->
