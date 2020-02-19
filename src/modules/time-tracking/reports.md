### Reports [GET /time-tracking/reports{?name,sort-by,sort-direction}]

Show list of users that has access to Time Tracking in case to see Event History for them

+ Parameters
    + name: John (optional, string) - Part of of a name to search users by
    + `sort-by`: email (optional, enum[string])
        Field to sort Users by. Possible values: `email`, `name`
    + `sort-direction`: asc (optional, enum[string]) 
        Direction to order results by. Possible values: `asc`, `desc`

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes
    
        + data (User, fixed-type)

<!-- include(../../error_responses.md) -->
