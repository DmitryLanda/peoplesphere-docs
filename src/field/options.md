### List of option [GET /fields/{field}/options?values[field_alias]=123{&pso-id,name,parent}]

## Get option list available for field
For conditional fields, preliminary values can be passed, otherwise the values are taken from the database

+ Parameters
    + `field`: 123 (required, number) - ID of the field
    + `pso-id`: 321 (optional, number) - ID of the pso. Needed to get the options of a conditional field for a specific pso
    + `name`: `some-option-name` (optional, string) - String for search by option name
    + `parent`: 123 (optional, number) - ID of the parent field (available for field with hierarchy type)
    + `values`: (array, optional) - Associative array, where key is the alias of the field, value is the new value of this field. Used for conditional fields, where the set of options depends on the value of other fields.

+ Request
    + Headers

          Accept: application/json
          Content-Type: application/json
          X-Application-Version: <client-name>/<version>
          X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes

        + data (array[Field Option], fixed-type)
        + meta (Meta)

<!-- include(../error_responses.md) -->