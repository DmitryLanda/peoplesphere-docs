### Me Store For Category [PUT /me/delegation-rules/{category}]

## Store delegation rules for category

+ Parameters 
    + category: `form` (required, enum[form,other])
        Action category alias.

+ Request

    + Permissions

            delegation_rules.user

    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

    + Attributes(Delegation Rules Create)

+ Response 201 (application/json)

<!-- include(../../error_responses.md) -->