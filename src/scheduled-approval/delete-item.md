### Delete item [DELETE /scheduled-approvals/{uuid}/items/{id}]

Delete scheduled approval item 

+ Parameters
    + uuid: 123 (required, number) - Uuid of the Scheduled Approval batch.
    + id: 123 (required, number) - Id of the Scheduled Approval item.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: '*'

+ Response 204 (application/json)

<!-- include(../error_responses.md) -->
