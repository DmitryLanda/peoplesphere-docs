### List [GET /operators]

## Fetch list of available data- type specific operators

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes

        + data (array[DataType Operator], fixed-type)

<!-- include(../error_responses.md) -->
