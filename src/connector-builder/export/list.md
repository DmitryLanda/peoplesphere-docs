### List [GET /connector-builder/exports{?name,pso-type,active,sort,order,include}]

## Fetch list of export maps

+ Parameters
    + name: Export map to search for (optional, string) 
        Search by name. Non strict, case-insensitive.
    + `pso-type`: usr
        Pso Type trigram to filter export maps for
    + `active`: true (optional, boolean)
        Field for filter exports by `is_active` column
    + sort: title (optional, enum[pso-type, name])
        Field to sort export maps by. 
        + Default: name
    + order: asc (optional, enum[asc, desc]) - Direction to order export maps by.
        + Default: asc
    + include: pso_type,language (optional, enum[pso_type, mapping, mapping.root_field, language, owner, population])
        The way to include relations in the response. Target relations can be comma separated if you want to get few of them

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes

        + data (array[Export], fixed-type)
        + meta (Meta)

<!-- include(../../error_responses.md) -->
