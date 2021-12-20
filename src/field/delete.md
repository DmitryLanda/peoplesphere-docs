### Delete [DELETE /fields/{id}]

Delete field after check where field using. 

+ Parameters
    + id: 123 (required, number)
        Alias of the Field.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 204 (application/json)

+ Response 422 (application/json)

    + Attributes (Response 422 Field)

+ Response 500 (application/json)

    + Attributes (Response 500)