### Create [POST /chats]

Create a new chat.

#### Permissions
 - `hr_request.create.chat`

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: '*'
          
    + Attributes(Chat Create)

+ Response 201 (application/json)

    + Attributes
        
        + data (Chat, fixed-type)
    
+ Response 400 (application/json)
              
    + Attributes (Response 400)

<!-- include(../error_responses.md) -->
