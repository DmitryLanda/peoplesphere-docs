### Reject action [POST /actions/{id}/reject]
To reject the action user must have `actions.update.*` permissions

Reject means changing `status` property to `rejected`

Actions that belongs to the `validation` category (see `type.category` property) must be validated (approved or rejected)

**Please note**: on action Reject comment is required.

**Note:** This endpoint will not apply any changes for actions that do not belongs to `validation` category

+ Parameters
    + id: 1267 (required, number) - ID of the action to be updated


+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>
          
    + Attributes(Reject Action)

+ Response 200 (application/json)
    
+ Response 400 (application/json)
              
    + Attributes (Response 400)

:[](../error_responses.md)
