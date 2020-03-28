### Create [POST /roles]

## **Create new role**

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>
          
    + Attributes(Role Create)

+ Response 201 (application/json)

    + Attributes
        
        + data (Role, fixed-type)
    
+ Response 400 (application/json)
              
    + Attributes (Response 400)

<!-- include(../error_responses.md) -->
