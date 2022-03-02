### Personalized List [GET /me/widgets{?view-mode,page,per-page,no-pagination}]

## **Get list of widgets that authorized user has access to** 

**ONLY active widgets that current user has access to will be provided**

The widget list will be filtered based on permissions (Features) user has access to

**Note**: Each widget managed by it's own permission

+ Parameters
    + `view-mode`: tab (enum[inline, tab])
    :[](../pagination_parameters.md)


+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (array[Widget], fixed-type)
        + meta (Meta)

:[](../error_responses.md)