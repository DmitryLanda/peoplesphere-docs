### Delete [DELETE /form-instances/{id}]

Delete Form instance

Permissions: `form_assignments.delete`, `form_assignments.view`

+ Parameters
    + id: 123 (required, number) - Id of the Form instance.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 204 (application/json)

:[](../error_responses.md)
