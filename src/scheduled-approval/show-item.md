### Show [GET /scheduled-approvals/{uuid}/{id}{?include}]

Fetch single trigger item.

+ Parameters
    + uuid: 123 (required, number) - Uuid of the Scheduled Approval batch.
    + id: 123 (required, number) - Id of the Scheduled Approval item.
    + include: author (string, optional) 
        Comma separated list of related resources that will be included into response.
        Possible values:
        + author
        + form_instance
        + fields
        + fields.type
        + fields.category
        + fields.category.pso_type
        + fields.domains
        + fields.domains.pso_type
        + fields.pso_type
        + fields.items
        + fields.options 
        
        Note that includes uses kind of inheritance. So if you put `include=fields.items.type` 
        it will also populate `items` property for all fields
        
        If you need to dive into and include related resources for sub-items you can use same options that `fields` property has. 
        
        For example: `include=fields.items.type` will attach to the response all fields that assignment has.         
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
    
        + data (ScheduledApprovalItem, fixed-type)

<!-- include(../error_responses.md) -->
