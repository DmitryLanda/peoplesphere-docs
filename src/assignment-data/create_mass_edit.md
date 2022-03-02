### Submit [POST /form-instances/{formInstance}/{relation}/mass-edit]

Submit Form Data for specified `formInstance` that assigned to the `relation`

+ Parameters
    + formInstance: 123 (required, number) - Id of Form Assignment data related to.
    + relation: hr (required, string) - Step relation.

+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>
          
    + Attributes(AssignmentData Mass Edit Submit)

+ Response 202 (application/json)

:[](../error_responses.md)
