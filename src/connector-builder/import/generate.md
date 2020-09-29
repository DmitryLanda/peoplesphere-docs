### Download template [GET /connector-builder/imports/{form}/template/{language}]

## Generate .xls template for import based by selected form

It returns file stream with generated template file. 

+ Parameters
    + form: 1 (required, number) 
        Id of the form for template
    + language: en (required, string) 
        Language alias for the template generating

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <comma separated features>

+ Response 200 (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)

<!-- include(../../error_responses.md) -->
