### Update [PATCH /chats/{id}]

Update chat status

#### Permissions
 - `hr_request.edit.chat`
 
+ Parameters
    + id: 123 (required, number) - Id of the chat.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>
          
    + Attributes(Chat Update)

+ Response 202 (application/json)

    + Attributes
    
        + data (Chat, fixed-type)

+ Response 400 (application/json)
              
    + Attributes (Response 400)

:[](../error_responses.md)
