### Show [GET /groups/{id}/history]

Fetch information about changes in group. Supports pagination

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
    
        + data (array[Group], fixed-type)

:[](../error_responses.md)
