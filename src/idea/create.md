### Create [POST /ideas]

Create Idea

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: '*'
    
    + Attributes(Idea Create)
    
+ Response 201 (application/json)

    + Attributes
        
        + data (Idea, fixed-type)
    
<!-- include(../error_responses.md) -->
