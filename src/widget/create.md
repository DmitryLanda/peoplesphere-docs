### Create [POST /widgets]

## **Create new widget**
On creation alias for widget will be generated automatically

Also for each new widget will be generated permission

Permission schema: `widget.<alias>.view`

By default users has no access to new widgets. To grant access widget permission must be added to the target role 
trough Roles API

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>
          
    + Attributes(Create Widget)

+ Response 201 (application/json)

    + Attributes
        
        + data (Entity ID, fixed-type)
    
+ Response 400 (application/json)
              
    + Attributes (Response 400)

:[](../error_responses.md)
