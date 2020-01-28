### Notification Types [GET /resources/notification-types{?page,per-page,no-pagination}]

## **Get list of notification types**

+ Parameters
    <!-- include(../pagination_parameters.md) -->

+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (array[Notification Type], fixed-type)
        + meta (Meta)

<!-- include(../error_responses.md) -->
