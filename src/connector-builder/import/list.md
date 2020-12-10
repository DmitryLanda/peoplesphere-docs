### List [GET /connector-builder/imports{?name,pso-type,active,include,sort-by,sort-direction}&status[]={status}&strategies[list_of]={strategies_list_of}&strategies[empty]={strategies_empty}]

## Fetch list of data imports

+ Parameters
    + name: Data Import to search for (optional, string) 
        Search by name. Non strict, case-insensitive.
    + `pso-type`: usr (optional, string)
        Pso Type trigram to filter imports
    + `active`: true (optional, boolean)
        Field for filter data imports by `is_active` column
    + `status`: `pending` (optional, array)
        Array if statuses to filter imports
    + `strategies_list_of`: add (optional, enum[add,replace])
       Available strategies to filter imports by strategies
    + `strategies_empty`: erase (optional, enum[erase,ignore])
       Available strategies to filter imports by strategies     
    + `sort-by`: name (optional, enum[name, active])
        Field to sort data imports by. 
    + `sort-direction`: asc (optional, enum[asc, desc]) - Direction to order data imports by.
        + Default: asc
    + include: language,form (optional, enum[form, files, language, owner])
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
