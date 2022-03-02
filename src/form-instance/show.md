### Show [GET /form-instances/{id}]

Fetch single Form instance

Permissions: `form_assignments.view`

+ Parameters
    + id: 123 (required, number) - Id of the Form instance.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes
    
        + data (FormInstance, fixed-type)

:[](../error_responses.md)
