### Data Types [GET /resources/data-types{?page,per-page,no-pagination}]

## **Get list of data types**

+ Parameters
    :[](../pagination_parameters.md)

+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (array[Data Type], fixed-type)
        + meta (Meta)

:[](../error_responses.md)
