### Cancel form [POST /form-assignment/{formInstance}/workflow/cancel]

Cancel Form progress for specified `formInstance` and reset first step with clear all not approved form answers.

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
