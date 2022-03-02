### Copy [POST /document-templates/{id}/copy]

Copy Document Template

+ Parameters
    + id: 123 (required, number) - Id of the Document Template.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>
          
    + Attributes
    
        + title (Translatable Text)

+ Response 202 (application/json)

    + Attributes
    
        + data (Document Template, fixed-type)

+ Response 400 (application/json)
              
    + Attributes (Response 400)

:[](../error_responses.md)