### Create [POST /document-generators]

Create Document Generator

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: '*'
          
    + Attributes(Document Generator Create)

+ Response 201 (application/json)

    + Attributes
        
        + data (Document Generator, fixed-type)
    
+ Response 400 (application/json)
              
    + Attributes (Response 400)

<!-- include(../error_responses.md) -->
