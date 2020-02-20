### Global Search [GET /search]

Search PSO with filters.


If you have any search preferences response will handle it.


But anyway following fields data will always presented in response:
- first name
- last name
- image
- active
- professional mobile phone
- professional phone
- professional email

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>
          
    + Attributes(Global Search Request)
    
+ Response 200 (application/json)

    + Attributes

        + data (array[Global Search Response], fixed-type)

<!-- include(../error_responses.md) -->
