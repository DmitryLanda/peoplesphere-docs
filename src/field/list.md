### List [GET /fields{?name,active,category,privacy-level,pso-type,data-type,append_profile,target-pso-type,allow-inactive-options,allow-items,sort-by,sort-direction}]

Fetch list of fields

+ Parameters
    + name: Field to search (optional, string) 
        Search by fields title. Non strict, case-insensitive.
    + active: true (optional, boolean)
        To filtering fields by active state. 
    + category: usr_category (optional, string) 
        Get only fields related to selected category. Fields category aliases used.
    + `privacy-level`: public (optional, enum[public, encrypted, extreme]) 
        To filtering fields by privacy level. 
    + `pso-type`: 123 (optional, number) 
        PSO type alias to filtering.
    + `data-type`: string (optional, array[string])
        Array of data types aliases to filtering.
    + append_profile: true (optional, boolean)
        Get only fields, appended to pso profile forms. 
    + `target-pso-type`: usr (optional, string)
        Get only related fields which link to selected pso type(alias should be provided).  
    + `allow-inactive-options`: true (optional, boolean)
        Return only active option items(for datatypes which supports options).  
    + `allow-items`: true (optional, boolean)
        Return composite field items, not only roots.
    + `sort-by`: name (optional, enum[name, pso-type])
        Column to sort fields by.
        + Default: name
    + `sort-direction`: asc (optional, enum[asc, desc]) 
        Direction to order fields categories by.
        + Default: asc

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes

        + data (array[Field], fixed-type)
        + meta (Meta)

<!-- include(../error_responses.md) -->
