### Show info [GET /companies/info]

## Fetch company info

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <comma separated features>

+ Response 200 (application/json)

    + Attributes
    
        + data (Company, fixed-type)

<!-- include(../error_responses.md) -->
