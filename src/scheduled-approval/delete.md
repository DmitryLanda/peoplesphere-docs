### Delete [DELETE /scheduled-approvals/{uuid}/{id}]

Delete scheduled approval or batch of 

+ Parameters
    + uuid: 123 (required, number) - Uuid of the Scheduled Approval batch.
    + id: 123 (optional, number) - Id of the Scheduled Approval item.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: '*'

+ Response 204 (application/json)

<!-- include(../error_responses.md) -->
