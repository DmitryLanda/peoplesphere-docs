### Privacy Levels [GET /resources/privacy-levels{?page,per-page,no-pagination}]

## **Get list of privacy levels**

+ Parameters
    :[](../pagination_parameters.md)

+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (array[Privacy Level], fixed-type)
        + meta (Meta)

:[](../error_responses.md)
