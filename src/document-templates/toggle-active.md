### Toggle active [PATCH /document-templates/{id}/toggle-active]

Toggle active of the Document Template

+ Parameters
    + id: 123 (required, number) - Id of the Document Templates.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 202 (application/json)

    + Attributes
    
        + data (Document Template, fixed-type)

+ Response 400 (application/json)
              
    + Attributes (Response 400)

:[](../error_responses.md)