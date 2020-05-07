### Generate [POST /connector-builder/imports/{id}/generate]

## Generate .xls template for import

It returns file stream with generated template file. 

+ Parameters
    + id: 1 (required, number) 
        Id of the Data Import.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <comma separated features>

+ Response 200 (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)

<!-- include(../../error_responses.md) -->
