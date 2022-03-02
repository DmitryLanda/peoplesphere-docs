### Delete [DELETE /ideas/{idea}/comments/{comment}]

Delete Idea comment.

+ Parameters
    + idea: 123 (required, number) - Id of the Idea.
    + comment: 234 (required, number) - Id of the Idea comment.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 204 (application/json)

:[](../../error_responses.md)
