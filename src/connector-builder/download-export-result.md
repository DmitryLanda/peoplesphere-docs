### Download Exported data [GET /connector-builder/exports/{alias}/download/{filename}]

## Download latest export result for specified mapping

+ Parameters
    + alias: usr_report (required, string) 
        Alias of the Export Mapping.
    + filename: user_report-27_12_2019_15_20_35.csv
        Report filename for download

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <comma separated features>
    
+ Response 200 (text/csv)

+ Response 200 (application/vnd.ms-excel)

+ Response 200 (application/pdf)

+ Response 400 (application/json)
              
    + Attributes (Response 400)

<!-- include(../error_responses.md) -->
