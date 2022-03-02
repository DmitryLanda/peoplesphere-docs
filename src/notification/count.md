### Show [GET /notifications/count{?user_id,actual,not-read}]

Get notifications count

+ Parameters
    + `user_id`: 1 (number, required) - id of user for filtering
    + `actual`: true (bool, required) - use only not expired notifications for count
    + `not-read`: true (bool, required) - use only not read notifications for count

+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (Notification Count)

:[](../error_responses.md)