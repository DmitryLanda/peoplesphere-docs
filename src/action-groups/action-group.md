### Action group info [GET /action-groups/{action_groups_id}]

## Get action group info with stats of progress 

+ Parameters
    + action_groups_id: 123 (required, number) - ID of the action group

+ Request
    + Headers
      Accept: application/json
      X-Application-Version: <client-name>/<version>
      X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (array[ActionGroupInfo], fixed-type)

<!-- include(../error_responses.md) -->