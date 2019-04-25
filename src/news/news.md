<!-- include(_data_structures.md) -->

# Group News
News. Put a nice description here, later.

## News [/news]

### List [GET /news{?title,sort,order}]

Fetch list of news

+ Parameters
    + title: query (optional, string) 
        Search by new title. Non strict, case-insensitive.
    + sort: title (optional, enum[`publish-date`, `title`])
        Field to sort news by. 
        + Default: `publish-date`
    + order: asc (optional, enum[`asc`, `desc`]) - Direction to order news by.
        + Default: `desc`

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: '*'

+ Response 200 (application/json)

    + Attributes

        + data (array[News])
        + meta (Meta News)

+ Response 401 (application/json)
              
    + Attributes (Response 401)

+ Response 500 (application/json)
              
    + Attributes (Response 500)

### Create [POST /news]

Create news item

+ type_id: 1 (required, number) - It is possible to put some information, f.e. link on related API endpoint possible to get available value
+ logo: string (required, string)
+ banner: string (required, string)
+ external_link: string (required, string)
+ is_promote_as_top: true (required, boolean)
+ publish_at: 2019-04-24T11:47:47.673Z (required, string)
+ title (required, array)
    + en: Some text for en locale (required, string)
    + fr: Some text for fr locale (required, string)
    + de: Some text for de locale (required, string)
    + es: Some text for es locale (required, string)
+ body (required, array)
    + en: Some text for en locale (required, string)
    + fr: Some text for fr locale (required, string)
    + de: Some text for de locale (required, string)
    + es: Some text for es locale (required, string)
+ button_text (required, array)
    + en: Some text for en locale (required, string)
    + fr: Some text for fr locale (required, string)
    + de: Some text for de locale (required, string)
    + es: Some text for es locale (required, string)

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: '*'
          
    + Attributes(News Create)

+ Response 200 (application/json)

    + Attributes(News)

+ Response 422 (application/json)
              
    + Attributes (Response 422)

+ Response 401 (application/json)
              
    + Attributes (Response 401)

+ Response 500 (application/json)
              
    + Attributes (Response 500)

### Show [GET /news/{id}]

Fetch single news item

+ Parameters
    + id: query (required, number) 
        Id of the News item.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: '*'

+ Response 200 (application/json)

    + Attributes(News)

+ Response 401 (application/json)
              
    + Attributes (Response 401)

+ Response 404 (application/json)
              
    + Attributes (Response 404)

+ Response 500 (application/json)
              
    + Attributes (Response 500)

### Delete [DELETE /news/{id}]

Delete news item

+ Parameters
    + id: query (required, number) 
        Id of the News item.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: '*'

+ Response 200 (application/json)

+ Response 401 (application/json)
              
    + Attributes (Response 401)

+ Response 404 (application/json)
              
    + Attributes (Response 404)

+ Response 422 (application/json)
              
    + Attributes (Response 422)

+ Response 500 (application/json)
              
    + Attributes (Response 500)

### Update [PATCH /news/{id}]

Update news item

+ type_id: 1 (optional, number) - It is possible to put some information, f.e. link on related API endpoint possible to get available value
+ logo: string (optional, string)
+ banner: string (optional, string)
+ external_link: string (optional, string)
+ is_promote_as_top: true (optional, boolean)
+ publish_at: `2019-04-24T11:47:47.673Z` (optional, string)
+ title (optional, array)
    + en: Some text for en locale (required, string)
    + fr: Some text for fr locale (required, string)
    + de: Some text for de locale (required, string)
    + es: Some text for es locale (required, string)
+ body (optional, array)
    + en: Some text for en locale (required, string)
    + fr: Some text for fr locale (required, string)
    + de: Some text for de locale (required, string)
    + es: Some text for es locale (required, string)
+ button_text (optional, array)
    + en: Some text for en locale (required, string)
    + fr: Some text for fr locale (required, string)
    + de: Some text for de locale (required, string)
    + es: Some text for es locale (required, string)

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: '*'
          
    + Attributes(News Create)

+ Response 200 (application/json)

    + Attributes(News)

+ Response 401 (application/json)
              
    + Attributes (Response 401)

+ Response 422 (application/json)
              
    + Attributes (Response 422)

+ Response 500 (application/json)
              
    + Attributes (Response 500)
