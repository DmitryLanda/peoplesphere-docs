### Create [POST /news-management]

Create news item

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: '*'
          
    + Attributes(News Create)

+ Response 201 (application/json)

    + Attributes
        
        + data (News Management, fixed-type)
    
+ Response 400 (application/json)
              
    + Attributes (Response 400)

<!-- include(../error_responses.md) -->
