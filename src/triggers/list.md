### List [GET /triggers{?include,name,type,active,sort-by,sort-direction,page,per-page}]

Fetch list of triggers

+ Parameters
    + name: Triggers to search (optional, string) 
        Search by triggers title. Non strict, case-insensitive.
    + type: plain (enum[plain, pso], optional) 
        Filter by triggers type.
    + active: Triggers status (optional, bool) 
        Filter by triggers active status.
    + `sort-by`: title (enum[publish-date, title], optional)
        Field to sort triggers by. 
        + Default: publish-date
    + `sort-direction`: asc (enum[asc, desc], optional) - Direction to order triggers by.
        + Default: desc
    + page: 1 (optional, integer)
        + Page of results
    + `per-page`: 25 (optional, integer)
        + Triggers per page
    + include: conditions,handlers (string, optional) 
        Comma separated list of related resources that will be included into response.
        
        Possible values:
        + conditions
        + handlers

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes

        + data (array[Trigger], fixed-type)
        + meta (Meta)

<!-- include(../error_responses.md) -->
