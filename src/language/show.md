### Show [GET /languages/default]

Get company language. System default language will return if company language not specified.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes
    
        + data (Language, fixed-type)

<!-- include(../error_responses.md) -->
