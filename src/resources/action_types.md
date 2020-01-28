### Action Types [GET /resources/action-types{?page,per-page,no-pagination}]

## **Get list of action types**

+ Parameters
    <!-- include(../pagination_parameters.md) -->

+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (array[Action Type], fixed-type)
        + meta (Meta)

<!-- include(../error_responses.md) -->
