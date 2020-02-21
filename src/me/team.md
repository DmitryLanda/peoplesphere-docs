### Team [GET /me/team]

## Fetch team of current user

+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)

    + Attributes

        + data (array[Brief Pso], fixed-type)
        + meta (Meta)

<!-- include(../error_responses.md) -->
