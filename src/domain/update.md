### Update [PATCH /domains/{alias}]

Update domain item

+ Parameters
    + alias: somedomain (required, string)
        Alias of the Domain item.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>
          
    + Attributes(Domain Update)

+ Response 202 (application/json)

    + Attributes
    
        + data (Domain, fixed-type)

+ Response 400 (application/json)
              
    + Attributes (Response 400)

:[](../error_responses.md)