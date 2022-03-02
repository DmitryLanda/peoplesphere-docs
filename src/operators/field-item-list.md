### Field item option list [GET /operators/field-items]

## Fetch list of available data-type specific operators for conditional field

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes

        + data (array[FieldItemOperator], fixed-type)

:[](../error_responses.md)