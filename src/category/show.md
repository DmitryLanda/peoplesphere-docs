### Show [GET /category/{alias}{?include}]

Fetch single fields category item

+ Parameters
    + alias: somedomain (required, string) 
        Alias of the Category item.
    + include: pso_type (optional, enum[pso_type])
        The way to include relations in the response.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes
    
        + data (Category, fixed-type)

:[](../error_responses.md)
