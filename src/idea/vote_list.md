### Get vote list (list of likes) [GET /ideas/{id}/vote/list]

Fetch list of Idea votes (likes).

+ Parameters
    + id: 123 (required, number) - Id of the Idea.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: '*'

+ Response 200 (application/json)
    
<!-- include(../error_responses.md) -->
