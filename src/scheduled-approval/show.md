### Show batch [GET /scheduled-approvals/{uuid}/{?include}]

Fetch batch of scheduled approvals items.

+ Parameters
    + uuid: 123 (required, number) - Uuid of the Scheduled Approval batch.
    + include: author (string, optional) 
        Comma separated list of related resources that will be included into response.
        Possible values:
        + author
        + form_instance
        + scheduled_approvals.fields
        + scheduled_approvals.fields.type
        + scheduled_approvals.fields.category
        + scheduled_approvals.fields.category.pso_type
        + scheduled_approvals.fields.domains
        + scheduled_approvals.fields.domains.pso_type
        + scheduled_approvals.fields.pso_type
        + scheduled_approvals.fields.items
        + scheduled_approvals.fields.options 
        
        Note that includes uses kind of inheritance. So if you put `include=scheduled_approvals.fields.items.type` 
        it will also populate `items` property for all fields
        
        If you need to dive into and include related resources for sub-items you can use same options that `fields` property has. 
        
        For example: `include=scheduled_approvals.fields.items.type` will attach to the response all fields that assignment has.         
        Every included `field` will have `items` property populated. Every item in `items` property will have `type` 
        property populated

        But, note: Unlike other forms with values array, "values" of composite will contain the structured tree of all subfields values.
        

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
