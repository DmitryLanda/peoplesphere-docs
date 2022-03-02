### Show [GET /psos/{dataOwner}/form-instances/{formInstance}/fields/{field}/values]

Get values answered by user(data owner) on field in form. 

+ Parameters
    + dataOwner: 123 (required, number) - Id of PSO who will own the value.
    + formInstance: 123 (required, number) - Id of Form Instance.
    + field: 123 (required, number) - Id of Field.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes
    
        + data (Field Value, fixed-type)

:[](../error_responses.md)
