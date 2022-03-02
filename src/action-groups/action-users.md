### User list by action group [GET /action-groups/{action_groups_id}/actions{?status,sort-by,sort-direction,search-term,page}]

## Get user list of action group matches specified filters, sorting and search

+ Parameters
    + action_groups_id: 123 (required, number) - ID of the action group
    + `status`: `in_progress,complete` (string, optional)
        - not_start
        - in_progress
        - complete
    + `sort-by`: `name` (string, optional)
        - status
        - name
    + `sort-direction`: `asc` (string, optional)
        - asc
        - desc
    + `search-term`: `some-text` (string, optional)

+ Request
    + Headers
      Accept: application/json
      X-Application-Version: <client-name>/<version>
      X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (array[ActionGroupOwner], fixed-type)
        + meta (Meta)

:[](../error_responses.md)