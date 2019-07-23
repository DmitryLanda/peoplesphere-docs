### Approve action [POST /actions/{id}/approve]
To approve the action user must have `actions.update.*` permissions

Approve means changing `status` property to `approved`. It may also apply additional actions that depends on the action type

Actions that belongs to the `validation` category (see `type.category` property) must be validated (approved or rejected).

**Note:** This endpoint will not apply any changes for actions that do not belongs to `validation` category

+ Parameters
    + id: 1267 (required, number) - ID of the action to be updated


+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>
          
    + Attributes(Approve Action)

+ Response 202 (application/json)
    
+ Response 400 (application/json)
              
    + Attributes (Response 400)

<!-- include(../error_responses.md) -->
