### Update [PATCH /triggers/{id}]

Update trigger item

+ Parameters
    + id: 123 (required, number)
        Id of the trigger item.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>
          
    + Attributes(Trigger Update)

+ Response 202 (application/json)

    + Attributes
    
        + data (Trigger, fixed-type)

+ Response 400 (application/json)
              
    + Attributes (Response 400)

:[](../error_responses.md)