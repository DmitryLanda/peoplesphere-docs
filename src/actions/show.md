### Show [GET /actions/{id}]

## Get details for specified action
To get action details user must have `actions.view.*` permissions


+ Parameters
    + id: 1267 (required, number) - ID of the action


+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (Action)

:[](../error_responses.md)