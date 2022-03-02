### Delete batch [DELETE /scheduled-approvals/{uuid}]

Delete all scheduled approvals in mass edit batch 

+ Parameters
    + uuid: 123 (required, number) - Uuid of the Scheduled Approval batch.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: '*'

+ Response 204 (application/json)

:[](../error_responses.md)
