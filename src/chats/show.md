### Show [GET /chats/{id}]

Get single chat item and mark it as viewed.

#### Permissions
Chat can be showed only for the author or user with  `hr_request.edit.chat` permission

+ Parameters
    + id: 5 (required, number) 
        Id of the Chat item.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: '*'

+ Response 200 (application/json)

    + Attributes
    
        + data (Chat, fixed-type)

:[](../error_responses.md)
