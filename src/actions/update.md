### Update [PATCH /actions/{id}]

## Update the action
To update the action user must have `actions.update.*` permissions

#### [FORBIDDEN] Approving/rejecting actions
**Some action types (schedule for example) requires additional actions to be done on Approve/Reject** 
**Be sure to use [Approve](#actions-actions-post-1) or [Reject](#actions-actions-post-2) endpoints to perform this operation**

**Approval and rejection through PATCH API is _forbidden_**

Approve means changing `status` property to `approved`

Reject means changing `status` property to `rejected`

Actions that belongs to the `validation` category (see `type.category` property) must be validated.

Validation means Approve or Reject

+ Parameters
    + id: 1267 (required, number) - ID of the action to be updated

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>
          
    + Attributes(Update Action)

+ Response 200 (application/json)
    
+ Response 400 (application/json)
              
    + Attributes (Response 400)

<!-- include(../error_responses.md) -->
