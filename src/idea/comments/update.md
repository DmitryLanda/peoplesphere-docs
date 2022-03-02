### Update [PATCH /ideas/{idea}/comments/{comment}]

Update Idea comment.

+ Parameters
    + idea: 123 (required, number) - Id of the Idea.
    + comment: 234 (required, number) - Id of the Idea comment.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>
          
    + Attributes(IdeaComment Update)

+ Response 202 (application/json)

    + Attributes
            
        + data (IdeaComment, fixed-type)

+ Response 400 (application/json)
              
    + Attributes (Response 400)

:[](../../error_responses.md)
