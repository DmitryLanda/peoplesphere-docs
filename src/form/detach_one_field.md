### Detach one field [DELETE /form/{form}/fields/{field}]

## **Detach a single field from form**

+ Parameters
    + form: 123 (required, number) - form id
    + field: 123 (required, number) - field id


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
