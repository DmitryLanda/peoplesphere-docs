### Form Instances [GET /me/form-instances/{type}]

## Fetch List of form-instances by type (poll | permanent | unique | periodic)

+ Parameters
    + type: poll (required, string) - type of form instances

+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (array[Form Data])

:[](../error_responses.md)
