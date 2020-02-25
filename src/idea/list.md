### List [GET /ideas{?status-id,created-after,created-before,category-id,name,user,sort-by,sort-direction}]

Fetch list of ideas

+ Parameters
    + `status-id`: 123 (number, optional)
    + `created-after`: `2019-03-21 09:34:58` (date-time, optional)
    + `created-before`: `2019-03-21 09:34:58` (date-time, optional)
    + `category-id`: 123 (number, optional)
    + `name`: 'Some name' (string, optional)
    + `user`: 'JohnDoe' (string, optional)
    + `sort-by`: 'votes' (optional, enum[string])
        Field to sort ideas by. Possible values:
        `votes`, `comments`
        + Default: 'votes'
    + `sort-direction`: 'desc' (optional, enum[string])
        Direction to order results by. Possible values: `asc`, `desc`
        + Default: 'desc'
        
+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes

        + data (array[Idea], fixed-type)
        + meta (Meta)

<!-- include(../error_responses.md) -->
