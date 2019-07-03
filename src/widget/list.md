### List [GET /widgets{?sort-by,sort-direction,active,query}]

Get details for selected widget

+ Parameters
    + `sort-by`: name (enum[name, created_at])
    + `sort-direction`: asc (enum[asc, desc])
    + active: true (boolean)
    + query: Widget name to search on (string)


+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (array[Widget], fixed-type)
        + meta (Meta)

<!-- include(../error_responses.md) -->