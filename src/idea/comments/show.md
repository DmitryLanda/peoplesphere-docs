### Show [GET /ideas/{idea}/comments/{comment}]

Fetch single Idea comment.

+ Parameters
    + idea: 123 (required, number) - Id of the Idea.
    + comment: 234 (required, number) - Id of Idea comment.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes
    
        + data (IdeaComment, fixed-type)

<!-- include(../../error_responses.md) -->
