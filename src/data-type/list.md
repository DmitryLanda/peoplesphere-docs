### List [GET /resources/data-types]

## Fetch list of data types

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes

        + data (array[DataType], fixed-type)
        + meta (Meta)

<!-- include(../error_responses.md) -->
