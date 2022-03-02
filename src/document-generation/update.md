### Update [PATCH /document-generators/{id}]

Update Document Generator

+ Parameters
    + id: 123 (required, number) - Id of the Document Generator.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>
          
    + Attributes(Document Generator Update)

+ Response 202 (application/json)

    + Attributes
    
        + data (Document Generator, fixed-type)

+ Response 400 (application/json)
              
    + Attributes (Response 400)

:[](../error_responses.md)