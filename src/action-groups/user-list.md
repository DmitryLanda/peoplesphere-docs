### User list [GET /action-groups/users{?pso-type,sort-by,sort-direction,search-term,page}]
List of user with statistic by action statuses

## Get list of user with statistic by action statuses matches specified filters, sorting and search

+ Parameters
    + `pso-type`: `usr` (string, optional)
    + `sort-by`: `name` (string, optional)
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
        + data (array[ActionGroupUserStats], fixed-type)
        + meta (Meta)

:[](../error_responses.md)