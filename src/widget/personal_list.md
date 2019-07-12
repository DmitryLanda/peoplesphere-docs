### Personalized List [GET /me/widgets{?view-mode}]

## **Get list of widgets that authorized user has access to** 

**ONLY active widgets that current user has access to will be provided**

The widget list will be filtered based on permissions (Features) user has access to

**Note**: Each widget managed by it's own permission

+ Parameters
    + `view-mode`: tab (enum[inline, tab])


+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (array[Widget], fixed-type)
        + meta (Meta)

<!-- include(../error_responses.md) -->