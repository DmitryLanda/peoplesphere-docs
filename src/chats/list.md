### List [GET /chats{?include-empty}]

Fetch list of chats

#### Permissions
 - `hr_request.view.chat`

+ Parameters
    + `include-empty`: false (optional, boolean)
        Include new and still empty chats. 
        
        By default API returns only not empty chats. To see empty chats you need add that param.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes

        + data (array[Chat], fixed-type)
        + meta (Meta)

:[](../error_responses.md)
