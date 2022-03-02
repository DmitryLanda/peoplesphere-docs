### Show [GET /connector-builder/imports/{id}{?include}]

## Fetch specified data import

+ Parameters
    + id: 1 (required, number) 
        Id of the Data Import.
    + include: language,form (optional, enum[form, files, language, owner])
            The way to include relations in the response. Target relations can be comma separated if you want to get few of them

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <comma separated features>

+ Response 200 (application/json)

    + Attributes
    
        + data (Data Import, fixed-type)

:[](../../error_responses.md)
