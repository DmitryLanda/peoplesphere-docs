### List View [GET /news{?title,published-only,sort,order}]

Fetch list of news for main page. Use population functional.

+ Parameters
    + `published-only`: Filter by state (optional, boolean) 
        Get only published News. Filtering use publish-date attribute.
    + title: News to search (optional, string) 
        Search by new title. Non strict, case-insensitive.
    + sort: title (optional, enum[publish-date, title])
        Field to sort news by. 
        + Default: publish-date
    + order: asc (optional, enum[asc, desc]) - Direction to order news by.
        + Default: desc

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>

+ Response 200 (application/json)

    + Attributes

        + data (array[News View], fixed-type)
        + meta (Meta)

<!-- include(../error_responses.md) -->
