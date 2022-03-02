### List [GET /chats/{id}/messages]

Fetch list of chat messages(with attachments, if added). Visiting that url also marks chat as viewed.

#### Permissions
 User should be chat's author or have `hr_request.edit.chat` 
 
+ Parameters
    + id: 5 (required, number) 
        Chat id
        
+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes

        + data (array[Chat Message], fixed-type)
        + meta (Meta)

:[](../../error_responses.md)
