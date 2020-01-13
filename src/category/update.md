### Update [PATCH /category/{alias}]

Update fields category item

+ Parameters
    + alias: somedomain (required, string)
        Alias of the Category item.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>
          
    + Attributes(Category Update)

+ Response 202 (application/json)

    + Attributes
    
        + data (Category, fixed-type)

+ Response 400 (application/json)
              
    + Attributes (Response 400)

<!-- include(../error_responses.md) -->