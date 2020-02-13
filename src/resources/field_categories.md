### Field Categories [GET /resources/field-categories{?page,per-page,no-pagination}]

## **Get list of field categories**

+ Parameters
    <!-- include(../pagination_parameters.md) -->

+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (array[Field Category], fixed-type)
        + meta (Meta)

<!-- include(../error_responses.md) -->