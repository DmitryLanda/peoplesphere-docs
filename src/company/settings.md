### Show settings [GET /companies/settings?]

## Fetch company settings

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <comma separated features>

+ Response 200 (application/json)

    + Attributes
    
        + data (Company settings, fixed)

<!-- include(../error_responses.md) -->
