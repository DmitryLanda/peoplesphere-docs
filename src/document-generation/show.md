### Show [GET /document-generators/{id}]

Fetch single document generator

+ Parameters
    + id: query (required, number) 
        Id of the Document Generator.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: '*'

+ Response 200 (application/json)

    + Attributes
    
        + data (Document Generator, fixed-type)

<!-- include(../error_responses.md) -->
