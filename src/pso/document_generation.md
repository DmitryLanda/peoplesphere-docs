### Document generators [GET /pso/{user-id}/document-generators]

## **Fetch document generation for specified user profile**

+ Parameters
    + name: Document generation Name (string, optional) - filter by document generation name
+ Request
    + Headers
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (array[Document Generator Index Data])
        + meta (Meta)

<!-- include(../error_responses.md) -->