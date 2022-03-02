### Features [GET /resources/features{?page,per-page,no-pagination}]

## **Get list of features**

+ Parameters
    :[](../pagination_parameters.md)

+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (array[Permission], fixed-type)
        + meta (Meta)

:[](../error_responses.md)
