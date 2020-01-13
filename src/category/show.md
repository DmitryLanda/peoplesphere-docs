### Show [GET /category/{alias}]

Fetch single fields category item

+ Parameters
    + alias: somedomain (required, string) 
        Alias of the Category item.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes
    
        + data (Category, fixed-type)

<!-- include(../error_responses.md) -->
