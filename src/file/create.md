### Create [POST /files/{type}]

Upload a new file.

+ Parameters
    + type: users (optional, enum[users, users_default, news, messages, logo])
        You could provide it to specify entity of file

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>
          
    + Attributes(File Create)

+ Response 201 (application/json)

    + Attributes
        
        + data (File, fixed-type)
    
+ Response 400 (application/json)
              
    + Attributes (Response 400)

:[](../error_responses.md)
