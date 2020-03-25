### List [GET /connector-builder/imports{?name,form,active,strategies.list_of,strategies.empty_values,include,sort-by,sort-direction}]

## Fetch list of data imports

+ Parameters
    + name: Data Import to search for (optional, string) 
        Search by name. Non strict, case-insensitive.
    + `active`: true (optional, boolean)
        Field for filter data imports by `is_active` column
    + `sort-by`: title (optional, enum[name, active])
        Field to sort data imports by. 
    + `sort-direction`: asc (optional, enum[asc, desc]) - Direction to order data imports by.
        + Default: asc
    + include: language,form (optional, enum[form, files, language])
        The way to include relations in the response. Target relations can be comma separated if you want to get few of them

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes

        + data (array[Data Import], fixed-type)
        + meta (Meta)

<!-- include(../../error_responses.md) -->
