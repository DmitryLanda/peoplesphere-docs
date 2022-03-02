### Show [GET /form-instances/{formInstance}/{relation}/mass-edit{?include}]

Get Form Data for specified `formInstance` that assigned to the `relation`

+ Parameters
    + formInstance: 123 (required, number) - Id of Form Assignment data related to.
    + relation: hr (required, string) - Step relation.
    + include: form_instance.fields.type,settings (string, optional)- Comma separated list of related resources that will be included into response.
        
        Possible values:
        + form_instance.settings
        + form_instance.fields
        + form_instance.fields.type
        + form_instance.fields.category
        + form_instance.fields.category.pso_type
        + form_instance.fields.domains
        + form_instance.fields.domains.pso_type
        + form_instance.fields.privacy_level
        + form_instance.fields.pso_type
        + form_instance.fields.items
        + form_instance.fields.options
        + form_instance.fields.settings
        + form_instance.fields.assignment_settings
        + form_instance.fields.assignment_permissions 
        
        Note that includes uses kind of inheritance. So if you put `include=form_instance.fields.items.type` 
        it will also populate `items` property for all fields
        
        If you need to dive into and include related resources for sub-items you can use same options that `fields` property has. 
        
        For example: `include=form_instance.ields.items.type` will attach to the response all fields that assignment has.         
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

:[](../error_responses.md)
