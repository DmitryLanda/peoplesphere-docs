### Fields [GET /psos/{pso}/fields{?name,active,category,privacy-level,pso-type,data-type,append-profile,target-pso-type,sort-by,sort-direction,page,per-page,no-pagination}]

## **Fetch fields for specified user profile**

+ Parameters
    + name: Field Name (string, optional) - filter by field name
    + active: true (boolean, required) - filter by field activity
    + category: identity (string, optional) - filter by field category
    + `privacy-level`: `public`, `encrypted`, `extreme` (array[string], optional) - filter by field privacy level
    + `pso-type`: usr (string, optional) - filter by field pso type
    + `data-type`: `composite`, `text` (array[string], optional) - filter by fields data type
    + `append-profile`: true  (boolean, optional) - if pso-type query param is declared, retrieve only fields which are belong to this pso type profile
    + `target-pso-type`: usr (string, optional) - retrieve fields with corresponded target_pso_type setting
    + `sort-by`: name (enum[name,pso-type,data-type,category,privacy-level,active], optional)
    + `sort-direction`: asc (enum[asc, desc], optional)    

+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (array[FieldForm With Value])
        + meta (Meta)

<!-- include(../error_responses.md) -->