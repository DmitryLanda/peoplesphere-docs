### Me Rules [GET /me/delegation-rules]

## Get my rules

+ Request

    + Permissions

            delegation_rules.user
  
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes

        + data (Delegation Rule Category Item, fixed-type)

<!-- include(../../error_responses.md) -->