### Create [POST /ideas/{idea}/comments]

Create Idea comment

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: '*'
    
    + Attributes(IdeaComment Create)
    
+ Response 201 (application/json)

    + Attributes
        
        + data (IdeaComment, fixed-type)
    
:[](../../error_responses.md)
