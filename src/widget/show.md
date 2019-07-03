### Show [GET /widgets/{id}]

Get details for selected widget

+ Parameters
    + id: 5 (required, number) 
        Id of the widget


+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (Widget)

<!-- include(../error_responses.md) -->