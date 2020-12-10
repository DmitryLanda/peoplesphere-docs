### User Store All [PUT /users/{user}/delegation-rules/all]

## Store delegation rules for all categories

+ Parameters
    + user: 1 (number, required)

+ Request

    + Permissions

            delegation_rules.admin

    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>

    + Attributes(Delegation Rules Create)

+ Response 201 (application/json)

<!-- include(../../error_responses.md) -->