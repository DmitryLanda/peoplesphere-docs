### Update [POST /forms/{id}]

## **Update form**

+ Parameters
    + id: 123 (required, string)

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>
          
    + Attributes(Form Update)

+ Response 202 (application/json)

    + Attributes
        
        + data (Form, fixed-type)
    
+ Response 400 (application/json)
              
    + Attributes (Response 400)

:[](../error_responses.md)
