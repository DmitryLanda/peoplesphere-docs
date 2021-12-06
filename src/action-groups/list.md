### Action group list [GET /action-groups{?status,category,sort-by,sort-direction,search-term,page}]

## Get list of action groups matches specified filters, sorting and search

+ Parameters
    + `status`: `in_progress,complete` (string, optional)
        - not_start
        - in_progress
        - complete
    + `category`: `form,link` (string, optional)
        - validation
        - link
        - form
        - todo
        - schedule
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
        + data (array[ActionGroup], fixed-type)
        + meta (Meta)

<!-- include(../error_responses.md) -->