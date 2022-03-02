### Show [GET /triggers/{id}]

Fetch single trigger item

+ Parameters
    + id: query (required, number) 
        Id of the Trigger item.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: '*'

+ Response 200 (application/json)

    + Attributes
    
        + data (Trigger, fixed-type)

:[](../error_responses.md)
