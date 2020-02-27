### Update [PATCH /ideas/{id}]

Update Idea

+ Parameters
    + id: 123 (required, number) - Id of the Idea.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>
          
    + Attributes(Idea Update)

+ Response 202 (application/json)

    + Attributes
                
        + data (Idea, fixed-type)
        
+ Response 400 (application/json)
              
    + Attributes (Response 400)

<!-- include(../error_responses.md) -->
