### Delete [DELETE /feature-access-rules/{alias}]

## **Remove specified Feature Access rule**

+ Parameters
    + alias: role_alias (required, string) - alias of the role


+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>
          
+ Response 204 (application/json)
    
+ Response 400 (application/json)
              
    + Attributes (Response 400)

<!-- include(../error_responses.md) -->
