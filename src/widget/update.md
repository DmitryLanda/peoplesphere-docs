### Update [PATCH /widgets/{alias}]

## **Update the widget**

+ Parameters
    + alias: my_widget (required, string) - alias of the widget


+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>
          
    + Attributes(Update Widget)

+ Response 202 (application/json)
    
    + Attributes
        
        + data (Entity ID, fixed-type)
    
+ Response 400 (application/json)
              
    + Attributes (Response 400)

:[](../error_responses.md)
