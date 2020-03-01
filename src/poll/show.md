### Show [GET /polls/{poll}/results]

## **Fetch results for specified poll**

+ Parameters
    + poll: 1 (number, required) - id of the poll


+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (Poll)

<!-- include(../error_responses.md) -->