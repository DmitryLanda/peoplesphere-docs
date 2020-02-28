### List [GET /form-instances{?name,active,with-hidden,assignment-type,pso-type,include,sort-by,sort-direction,page,per-page,no-pagination}]

Fetch list of Form instances

+ Parameters
    + `name`: 'Some name' (string, required)
    + `active`: true (boolean, required)
    + `with-hidden`: true (boolean, required)
    + `assignment-type`: 'Some name' (required, enum[string])
        Possible values: `poll`, `permanent`, `unique`, `periodic`
    + `pso-type`: some_type (string, required)
    + `include`: settings, access_rules, workflow_steps (string, optional)
    + `sort-by`: 'name' (required, enum[string])
        Field to sort by. Possible values:
        `name`
    + `sort-direction`: 'asc' (required, enum[string])
        Direction to order results by. Possible values: `asc`, `desc`
    <!-- include(../pagination_parameters.md) -->
        
+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes

        + data (array[FormInstance], fixed-type)
        + meta (Meta)

<!-- include(../error_responses.md) -->
