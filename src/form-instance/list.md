### List [GET /form-instances{?name,active,with-hidden,assignment-type,pso-type,include,sort-by,sort-direction,page,per-page,no-pagination}]

Fetch list of Form instances

Permissions: `form_assignments.view`

+ Parameters
    + `name`: `Some name` (string, optional)
    + `active`: true (boolean, optional)
    + `with-hidden`: true (boolean, optional)
        + Default: false 
    + `assignment-type`: `unique` (enum[string], optional)
        + Members
            + `poll`
            + `permanent`
            + `unique`
            + `periodic`
    + `pso-type`: `some_type` (string, optional)
    + `include`: `settings,access_rules`(string, optional)
        + Members
            + `settings`
            + `access_rules`
            + `workflow_steps`
            + `pso_type`
    + `sort-by`: `name` (enum[string], optional)
        + Default: `name`
        + Members
            + `name`
    + `sort-direction`: `asc` (enum[string], optional)
        + Default: `asc`
        + Members
            + `asc`
            + `desc`
    <!-- include(../pagination_parameters.md) -->
        
+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes

        + data (array[FormInstance ListItem], fixed-type)
        + meta (Meta)

<!-- include(../error_responses.md) -->
