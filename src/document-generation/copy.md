### Copy [POST /document-generators/{id}/copy]

Copy Document Generator

+ Parameters
    + id: 123 (required, number) - Id of the Document Generator.

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
    
        + data (Document Generator, fixed-type)

+ Response 400 (application/json)
              
    + Attributes (Response 400)

<!-- include(../error_responses.md) -->