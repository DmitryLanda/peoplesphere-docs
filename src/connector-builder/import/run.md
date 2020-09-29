### Run import [POST /connector-builder/imports/{id}/run]

## Run import process
It plans import data from last valid(success or warning) file. 

+ Parameters
    + id: 1 (required, number) 
        Id of the Data Import.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <comma separated features>

+ Response 204 (application/json)

<!-- include(../../error_responses.md) -->
