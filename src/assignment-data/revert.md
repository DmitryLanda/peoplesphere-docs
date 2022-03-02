### Revert form [POST /form-assignment/{formInstance}/workflow/revert]

Revert Form for specified `formInstance` to previous step.

+ Parameters
    + formInstance: 312 (required, number) - Id of Form Assignment data related to.

+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>
          
    + Attributes(AssigmentData Workflow Action)

+ Response 202 (application/json)

:[](../error_responses.md)
