### Common List [GET /notifications{?user_id,expires-after,effective-date,actual,page,per-page,no-pagination}]

## **Get list of notifications matches specified filters**

+ Parameters
    + `user_id`: 1 (number, required) - id of user for filtering
    + `expires-after`: `2020-01-01 30:30:30` (date-time, optional) - format YYYY-MM-DD HH:II:SS
    + `effective-date`: `2020-01-01 30:30:30` (date-time, optional) - format YYYY-MM-DD HH:II:SS
    + actual: true (enum[0, 1, true, false])
    <!-- include(../pagination_parameters.md) -->

+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (array[Notification], fixed-type)
        + meta (Meta)

<!-- include(../error_responses.md) -->
