### Get History [GET /history/psos/{pso}/{field}]

## **Get detailed changes of answers data for selected pso (user) and field**

+ Parameters
    + pso: 1 (required, number) - id of pso
    + field: 2 (required, number) - id of field


+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (History)

<!-- include(../error_responses.md) -->