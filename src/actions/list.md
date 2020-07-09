### List [GET /actions{?user-id,effective-after,effective-before,expires_after,expires_before,type-alias,statuses,actual,page,per-page,no-pagination}]

## Get list of actions matches specified filters
To view list of actions user must have `actions.view` permission

+ Parameters
    + `user-id`: 123 (number, required)
    + `effective-after`: `2019-03-21 09:34:58` (date-time)
    + `effective-before`: `2019-03-21 09:34:58` (date-time)
    + `expires_after`: `2019-03-21 09:34:58` (date-time)
    + `expires_before`: `2019-03-21 09:34:58` (date-time)
    + `type-alias`: leave (string)
    + statuses (array[string])        
        - active
        - approved
        - pending
        - done
        - failed
        - rejected
    + actual: true (boolean)
        Predefined set of filter. Same as `effective-before=<now>&statuses[]=active&statuses[]=pending`
    <!-- include(../pagination_parameters.md) -->

+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (array[Action], fixed-type)
        + meta (Meta)

<!-- include(../error_responses.md) -->
