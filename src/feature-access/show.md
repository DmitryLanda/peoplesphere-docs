### Show [GET /feature-access-rules/{alias}/{?include}]

## **Get details for selected Feature Access rule**

+ Parameters

    + alias: role_alias (required, string) - alias of the role
    + include: modules,features (string, optional)

      The way to include relations in the response. Target relations can be comma separated if you want to get few of them


+ Request

    + Headers

            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)

    + Attributes

        + data (Feature Access)

<!-- include(../error_responses.md) -->