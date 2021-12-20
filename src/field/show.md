### Show [GET /fields/{id}]

Fetch single field item

Permission required: `fields.view`

+ Parameters
    + id: 123 (required, string) 
        Alias of the Category item.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes
    
        + data (Field, fixed-type)

<!-- include(../error_responses.md) -->
