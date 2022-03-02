### Create [POST /document-templates]

Create Document Template

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: '*'
          
    + Attributes(Document Template Create)

+ Response 201 (application/json)

    + Attributes
        
        + data (Document Template, fixed-type)
    
+ Response 400 (application/json)
              
    + Attributes (Response 400)

:[](../error_responses.md)
