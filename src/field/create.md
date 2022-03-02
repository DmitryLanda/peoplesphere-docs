### Create [POST /fields]

Create new field item.

Permission required: `fields.create`

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>
          
    + Attributes(Field Create)

+ Response 201 (application/json)

    + Attributes
        
        + data (Field Option Show, fixed-type)
    
+ Response 400 (application/json)
              
    + Attributes (Response 400)

:[](../error_responses.md)
