### List [GET /chats/{id}/messages]

Fetch list of chat messages(with attachments, if added). Visiting that url also marks chat as viewed.

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

<!-- include(../../error_responses.md) -->
