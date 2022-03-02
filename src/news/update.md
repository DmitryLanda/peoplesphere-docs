### Update [PATCH /news-management/{id}]

Update news item

+ Parameters
    + id: 123 (required, number) - Id of the News item.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>
          
    + Attributes(News Update)

+ Response 202 (application/json)

    + Attributes
    
        + data (News Management, fixed-type)

+ Response 400 (application/json)
              
    + Attributes (Response 400)

:[](../error_responses.md)