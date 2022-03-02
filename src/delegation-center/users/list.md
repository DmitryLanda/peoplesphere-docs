### User Rules [GET /user/{user}/delegation-rules]

## Get user's rules

+ Parameters
    + user: 1 (number, required)

+ Request

    + Permissions

            delegation_rules.admin
  
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes

        + data (Delegation Rule Category Item, fixed-type)

:[](../../error_responses.md)