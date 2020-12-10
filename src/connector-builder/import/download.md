### Download Import files [GET /connector-builder/imports/{id}/download/{type}/{filename}]

## Download the latest related on import files, like a source file, and validation/execution logs

+ Parameters
    + id: 1 (required, number) 
        Import id
    + type: data_file (required, enum[data_file,validation_file,execution_file])
        Type of file to download, it can be log or source file
    + filename: import_source_02_location_import_base_06092020184859.xlsx (required, string)
        File name, can be found in import responses with files include

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <comma separated features>
    
+ Response 200 (application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
+ Response 200 (text/plain)

<!-- include(../../error_responses.md) -->
