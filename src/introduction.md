# PeopleSpheres API

Main (core) API for interaction with form, fields and other core things

# Authorization

Most part of endpoints protected with authorization mechanism.
To authenticate your request you need to obtain authentication token in SSO service.
We are using [KeyCloak](https://www.keycloak.org/) as SSO server. Read motre about aouthorization in KeyCloak
[docs](https://www.keycloak.org/docs/latest/authorization_services/index.html#_authentication_methods).
This token should be passed with `Authorization` header.

Authentication header example: `Authorization: Bearer KeyCloakTokenString`

Please note - **endpoints that requires authorization marked with small locker icon**

# API Versioning:

All API endpoints supports API versioning. To specify it you need to pass `Accept` header
Example: `Accept: application/vnd.monportail.v1+json`

Supported versions:
+ v1

Detailed info about versions and difference between them will be specified for each API endpoint

# Client Versioning

In order to not support outdated and legacy API endpoint for a long time every client must send specific header.
This header need to know what is the app version. API will use it to figure out if it can handle this app or not

Header: `X-Application-Version: <client-name>/<version>`

+ client-name - one of ios or android
+ version - client version. It must be semantic version

Examples:

+ X-Application-Version: ios/1.0.0
+ X-Application-Version: android/4.67.15

# Request

Different APIs requires different request. Each request described in related API section.
Definition for each request object we use can be found in `Models` section (bottom of the page)

# Includes

In order to improve performance and give more control on response to cliend side
Most part of `GET` requests supports `include` option. It is optional and can be specified with as a query part of URL.
It may has comaseparated list of relations that need to be presented in response. Each API has their own set of
relations that will be listed for each API individually.
Includes supports kind of inheritanse. For example if you need to get in response `fields` relation with `type` for
all items it can be done as `include=fields,fields.type`

Examples:
`/fields?include=items,category`
`/form/123?include=fields,fields.items,fields.category`

# Response

Each response (no matter if it single item or a list of items) **wrapped with `data` node.**

Each response comes with `successful` http code:

+ `200` - means request completed successfully. Usually contains data in body
+ `201` - means new entity created successfully. Usually contains id of created entity in body
+ `202` - means entity was successfully updated. Usually contains no data in body
+ `204` - means there are no data to return. Usually happens for completed `DELETE` requests
Definition for each response object we use can be found in `Models` section (bottom of the page)

Example :
**Response with single object**
```
{
    'data': {
        //...
    }
}
```
    
**Response with list of objects**
```    
{
    'data': [
        {
            //...
        },
        {
            //...
        },
        ...
    ]
}
```
    
## Data representation (mapping)

+ `integer` - number
+ `float|double` - number
+ `string` - string
+ `date` - string, always formatted as **YYYY-MM-DD HH:mm:ss**. No timezone specified. **Timezone always UTC.**

# Pagination

To increase performance most part of lists supports pagination.
It means that response will contain only limited number of items and special `meta` node (same level `data` node located) with pagination info.
Example structure

```
{
   'data': [...],
   'meta': {
       'pagination': {
           'total': 238,
           'count': 25,
           'per_page': 25,
           'current_page': 2,
           'total_pages': 10,
           'links': {
               'previous': 'http://example.com/api/users?page=1'
               'next': 'http://example.com/api/users?page=3'
           }
       }
   }
}
```

Please note that this `meta` node optional and appears ONLY if endpoint supports pagination. Also links for `next` and `previous`
pages depends on `current_page` and `total_pages`. So, for example, `previous` link will be omitted when results for 1st page
returned, same for `next` - will be omitted when last page reached.

Please note - you may skip pagination and get the whole list of items. To do it you need to pass no-pagination query option with positive value.
Example: `GET /api/resources/data-types?no-pagination=1`

Also it is possible to pass `per-page` query option to change default value (25). Example: `GET /api/resources/data-types?per-page=5`

# Errors

There are few type of errors that can happens:

+ validation
+ authentication
+ authentication
+ not found
+ application/business logic
+ server/unexpected

## Validation Error

Happens when data you submit fails against validation rules.
Such response will have `400` (Bad Request) http status code and contain error related information in body.

```
{
    'message': '400 Bad Request',
    'errors': [
        'field_with_bad_data': [
            'Reason of failed validation',
            'Another reason of failed validation',
            ...
        ],
        'another_field_with_bad_data': [
            ...
        ],
        ...
    ],
   'status_code': 400
}
```

Please note that `errors` contains ONLY fields that fails against validation rules.
Each field can has MANY error messages, all of them listed in array

## Authenticatio Error

Happens when protected API endpoint requested without (or with bad or expired) specified token.

```
{
    'message': 'Short description of error reason',
    'status_code': 401
}
```

## Authorization Error

Happens if authenticated user has no access to specified endpoint.

```    
{
    'message': 'Short description of error reason',
    'status_code': 403
}
```

## Not Found Error

Happens if client trying to access not existing API endpoint or not existing entity identifier specified

```    
{
    'message': 'Short description of error reason',
    'status_code': 404
}
```

## Not Acceptable Error

In most cases the reason - client version is too old and not supported
The main use case for it - restrict usage of old mobile application (in order to not maintain legacy API endpoints).
See more details in section about versions

```    
{
    'message': 'Short description of error reason',
    'status_code': 406
}
```

## Application Errors

Happens when something went wrong from Business Logic point of view.
Such response will have `422` (Unprocessable Entity) http status code

```    
{
    'message': 'Descriptive error message',
    'status_code': 422
}
```
    
## Server Errors

There are small chance to get such error. In most cases it means that the server or a part of it down and have to be
maintained as soon as possible.
Such response will have `500` (Internal Error) http status code

```    
{
    'message': 'Internal Error',
    'status_code': 500
}
```
    
# Translations

To get all available translation for key use param `with_translation=1` in path.

For example:

+ `/resources/field-permissions?with_translations=1:`
```
{
   'data': [
       {
           'id': 3,
           'alias': 'edit',
           'name': {
               'en': 'Edit',
               'fr': 'Modifier'
           }
       },
       //....
   ]
}
```
+ `/resources/field-permissions:`
```
{
   'data': [
       {
           'id': 3,
           'alias': 'edit',
           'name': 'Edit',
       },
       //....
   ]
}
```

## Status
In Progress.