### Mark as read [PATCH /notifications/mark-as-read]

Mark all unread notifications as read.

+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 204 (application/json)

<!-- include(../error_responses.md) -->