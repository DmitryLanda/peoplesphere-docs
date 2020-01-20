### Show [GET /document-templates/{id}]

Fetch single document template

+ Parameters
    + id: query (required, number) 
        Id of the Document Template.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: '*'

+ Response 200 (application/json)

    + Attributes
    
        + data (Document Template, fixed-type)

<!-- include(../error_responses.md) -->
