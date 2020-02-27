### Show [GET /ideas/{id}]

Fetch single Idea

+ Parameters
    + id: 123 (required, number) - Id of the Idea.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes
    
        + data (Idea, fixed-type)

<!-- include(../error_responses.md) -->
