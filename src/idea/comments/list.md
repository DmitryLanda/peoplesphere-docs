### List [GET /ideas/{idea}/comments]

Fetch list of idea comments.

+ Parameters
    + `idea`: 123 (number, required) Idea Id
        
+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes

        + data (array[IdeaComment], fixed-type)
        + meta (Meta)

<!-- include(../../error_responses.md) -->
