### List [GET /scheduled-approvals{?expired,sort-by,sort-direction,include}]

Fetch list of scheduled approvals

+ Parameters
    + expired: true (optional, boolean) 
        Include expired approvals. 
        + Default: false
    + `sort-by`: author (enum[form_instance, author, approval_scheduled_date, status], optional)
        Field to sort by. If not provided will be sorted by creation date.
    + `sort-direction`: asc (enum[asc, desc], optional) 
        Direction to order approvals by.
        + Default: desc
    + include: author (string, optional) 
        Comma separated list of related resources that will be included into response.
        Possible values:
        + author
        + form_instance
        + scheduled_approvals.fields.items

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes

        + data (array[ScheduledApproval], fixed-type)
        + meta (Meta)

<!-- include(../error_responses.md) -->
