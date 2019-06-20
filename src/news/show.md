### Show [GET /news/{id}]

Fetch single news item

+ Parameters
    + id: query (required, number) 
        Id of the News item.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: '*'

+ Response 200 (application/json)

    + Attributes
    
        + data (News, fixed-type)

<!-- include(../error_responses.md) -->
