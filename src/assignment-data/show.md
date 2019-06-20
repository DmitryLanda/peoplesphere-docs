### Show [GET /psos/{dataOwner}/form-instances/{formInstance}{?include}]

Get Form Data for specified `formInstance` that assigned to the `dataOwner`

+ Parameters
    + dataOwner: 5 (required, number) 
        Id of PSO Form Assignment assigned to.
    + formInstance: 123 (required, number) 
        Id of Form Assignment data related to.
    + include: fields.type,settings (string, optional) 
        Comma separated list of related resources that will be included into response.
        
        Possible values:
        + settings
        + fields
        + fields.type
        + fields.category
        + fields.category.pso_type
        + fields.domains
        + fields.domains.pso_type
        + fields.privacy_level
        + fields.pso_type
        + fields.items
        + fields.options
        + fields.settings
        + fields.assignment_settings
        + fields.assignment_permissions 
        
        Note that includes uses kind of inheritance. So if you put `include=fields.items.type` 
        it will also populate `items` property for all fields
        
        If you need to dive into and include related resources for sub-items you can use same options that `fields` property has. 
        
        For example: `include=fields.items.type` will attach to the response all fields that assignment has.         
        Every included `field` will have `items` property populated. Every item in `items` property will have `type` 
        property populated
        

+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)
    **Note**: response example provides all nested data, but in fact it depends on *include* option
    + Attributes
        + data (AssignmentData)

<!-- include(../error_responses.md) -->