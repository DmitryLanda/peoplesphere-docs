### Population Types [GET /resources/population-types{?page,per-page,no-pagination}]

## **Get list of population types**

+ Parameters
    :[](../pagination_parameters.md)

+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (array[Population Type], fixed-type)
        + meta (Meta)

:[](../error_responses.md)
