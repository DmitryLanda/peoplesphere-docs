### Common List [GET /forms{?name,pso-type,active,include-standard,sort-by,sort-direction,page,per-page,no-pagination}]

## **Get list of forms matches specified filters**

+ Parameters
    + `sort-by`: name (enum[name], optional)
    + `sort-direction`: asc (enum[asc, desc], optional)
    + active: true (boolean, optional)
    + name: form name to search on (string, optional)
    + `include-standard`: true (boolean, optional) - Include creation and profile forms 
    + `pso-type`: usr (string, optional) - PSO type alias to filtering
    <!-- include(../pagination_parameters.md) -->

+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (array[Form], fixed-type)
        + meta (Meta)

<!-- include(../error_responses.md) -->
