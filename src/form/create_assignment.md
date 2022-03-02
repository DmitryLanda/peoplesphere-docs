### Create Assignment [POST /forms/{id}/instances]

## **Assign users to form**

Requested user permissions:
- `form_assignments.view`

+ Parameters
    + id: 123 (required, string) - form id

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>
          
    + Attributes(Create Assignment)

+ Response 201 (application/json)

    + Attributes
        
        + data (Form Assignment, fixed-type)
    
+ Response 400 (application/json)
              
    + Attributes (Response 400)

:[](../error_responses.md)
