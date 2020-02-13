### Show [GET /groups/{id}]

Fetch single group item

+ Parameters
    + id: 123 (required, number)
        ID of the Group item.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes
    
        + data (Group, fixed-type)

<!-- include(../error_responses.md) -->
