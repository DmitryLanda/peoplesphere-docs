### Show [GET /notifications/{notification}]

## **Get details for selected notification**

+ Parameters
    + notification: notification (required, number) - id of the notification


+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (Notification)

<!-- include(../error_responses.md) -->