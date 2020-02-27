### Show [GET /notifications/count/{user_id}]

## **Get notifications count**

+ Parameters
    + `user_id`: 1 (number, required) - id of user for filtering

+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (Notification Count)

<!-- include(../error_responses.md) -->