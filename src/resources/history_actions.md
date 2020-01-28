### History Actions [GET /resources/history-actions{?page,per-page,no-pagination}]

## **Get list of history actions**

+ Parameters
    <!-- include(../pagination_parameters.md) -->

+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (array[Log Action], fixed-type)
        + meta (Meta)

<!-- include(../error_responses.md) -->
