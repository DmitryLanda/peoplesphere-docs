### Delete [DELETE /widgets/{id}]

Remove the widget

+ Parameters
    + id: 5 (required, number) 
        Id of the widget


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
