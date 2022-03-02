### User Store For Category [PUT /users/{user}/delegation-rules/{category}]

## Store delegation rules for category

+ Parameters
    + user: 1 (number, required)
    + category: `form` (required, enum[form,other])
        Action category alias.

+ Request

    + Permissions

            delegation_rules.admin

    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

    + Attributes(Delegation Rules Create)

+ Response 201 (application/json)

:[](../../error_responses.md)