### Action list by user [GET /action-groups/users/{user_id}{?category,status,sort-by,sort-direction,search-term,page}]

## Get Action list by user matches specified filters, sorting and search

+ Parameters
    + user_id: 123 (required, number) - ID of the user 
    + `category`: `form,link` (string, optional)
        - validation
        - link
        - form
        - todo
        - schedule
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
        + data (array[ActionGroupByUser], fixed-type)
        + meta (Meta)

:[](../error_responses.md)