### Idea Statuses [GET /resources/idea-statuses{?page,per-page,no-pagination}]

## **Get list of idea statuses**

+ Parameters
    :[](../pagination_parameters.md)

+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (array[Idea Status], fixed-type)
        + meta (Meta)

:[](../error_responses.md)
