### Create [POST /chats/{id}/messages]
Create a new message into the chat.

#### Permissions
 User should be chat's author or have `hr_request.edit.chat` 

+ Parameters
    + id: 5 (required, number) 
        Target chat id
        
+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: '*'
          
    + Attributes(Chat Message Create)

+ Response 201 (application/json)

    + Attributes
        
        + data (Chat Message, fixed-type)
    
+ Response 400 (application/json)
              
    + Attributes (Response 400)

:[](../../error_responses.md)
