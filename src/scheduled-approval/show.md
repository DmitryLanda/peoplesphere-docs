### Show [GET /scheduled-approvals/{uuid}/{id}{?include}]

Fetch single trigger item.
Unlike other forms with values array, "values" of composite will contain the structured tree of all subfields values.

+ Parameters
    + uuid: 123 (required, number) - Uuid of the Scheduled Approval batch.
    + id: 123 (optional, number) - Id of the Scheduled Approval item.
    + include: author (string, optional) 
        Comma separated list of related resources that will be included into response.
        Possible values:
        + author
        + form_instance
        + scheduled_approvals.fields.items

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: '*'

+ Response 200 (application/json)

    + Attributes
    
        + data (ScheduledApproval, fixed-type)

<!-- include(../error_responses.md) -->
