### Poll (Form Instances) [GET /me/poll]

## Fetch latest poll available to current user

+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (array[Form Data])

<!-- include(../error_responses.md) -->
