### Event History [GET /time-tracking/events{?user-id,sort-by,sort-direction}]

Fetch time tracking events

+ Parameters
    + `user-id`: 123 (optional, integer) 
        Filter events by User.
    + `sort-by`: date (optional, enum[string])
        Field to sort events by. Possible values: 
        `date`, `event`, `declared_location.name`, `reported_location.name`
        + Default: date
    + `sort-direction`: asc (optional, enum[string]) 
        Direction to order results by. Possible values: `asc`, `desc`
        + Default: desc

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes

        + data (array[Time Tracking Event], fixed-type)
        + meta (Meta)

:[](../../error_responses.md)
