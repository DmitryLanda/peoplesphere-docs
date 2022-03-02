### Create [POST /forms]

## **Create new form**

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>
          
    + Attributes(Form Create)

+ Response 201 (application/json)

    + Attributes
        
        + data (Form, fixed-type)
    
+ Response 400 (application/json)
              
    + Attributes (Response 400)

:[](../error_responses.md)
