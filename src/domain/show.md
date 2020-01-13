### Show [GET /domains/{alias}]

Fetch single domain item

+ Parameters
    + alias: somedomain (required, string) 
        Alias of the Domain item.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes
    
        + data (Domain, fixed-type)

<!-- include(../error_responses.md) -->
