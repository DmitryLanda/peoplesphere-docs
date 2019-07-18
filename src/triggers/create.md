### Create [POST /triggers]

## Create new trigger entry
 Most part of properties are simple and described in JSON schema. 
 But there are 2 properties (**conditions** and **handlers**) that need to be explained 

### Conditions
Condition uses to describe rules that will be applied as filers on trigger execution.

Condition can be  of 2 types - **group** and **condition** itself

#### Group
It should be used to combine set of conditions with logical operator (or, and)

Example
```json
{
    "type": "group",
    "combine_with": "and",
    "conditions": []
}
``` 

#### Condition
It should be used to describe the field based rule (filter)

Example
```json
{
    "type": "condition",
    "field": "usr_email",
    "operator": "==",
    "raw_value": "john.doe@example.com"
}
``` 

#### Nesting conditions
Conditions and groups can be nested into each other to represent complex expressions


Example `(usr_name == Foo or usr_email != xxx@example.com)`
```json
{
    "type": "group",
    "combine_with": "or",
    "conditions": [
        {
            "type": "condition",
            "field": "usr_name",
            "operator": "==",
            "raw_value": "Foo"        
        },     
        {
            "type": "condition",
            "field": "usr_email",
            "operator": "!=",
            "raw_value": "xxx@example.com"        
        }     
    ]
}
``` 


Example `((usr_name == Foo and usr_email != xxx@example.com) or usr_hired_at > 2010-01-12)`
```json
{
    "type": "group",
    "combine_with": "or",
    "conditions": [
        {
            "type": "group",
            "combine_with": "and",
            "conditions": [
                {
                    "type": "condition",
                    "field": "usr_name",
                    "operator": "==",
                    "raw_value": "Foo"        
                },     
                {
                    "type": "condition",
                    "field": "usr_email",
                    "operator": "!=",
                    "raw_value": "xxx@example.com"        
                }                 
            ]
        },
        {
            "type": "condition",
            "field": "usr_hired_at",
            "operator": ">",
            "raw_value": "2010-01-12"        
        }
    ]
}
``` 

### Handlers
Each **handler** entry has:
 - type (determine payload structure and handling on server side). Allowed options:
     - notification
     - action_todo
     - action_schedule
     - field_modification
     - form_assignment
 - population (describes PSO that will be used as population\recipient once trigger executed)
 - payload (additional info that depends on **type**)

#### Handler payload examples

For **notification** type
```json    
{
    "title": {
        "en": "...",
        "es": "...",
        "de": "...",
        "fr": "..."
    },
    "message": {
        "en": "...",
        "es": "...",
        "de": "...",
        "fr": "..."
    },
    "channels": [
        "web",
        "email"
    ]
}
```

For **action_todo** type
```json    
{
    "title": {
        "en": "...",
        "es": "...",
        "de": "...",
        "fr": "..."
    },
    "message": {
        "en": "...",
        "es": "...",
        "de": "...",
        "fr": "..."
    },
    "due_date": "2019-02-34 12:34:56"
}
```

For **action_schedule** type
```json    
{
    "title": {
        "en": "...",
        "es": "...",
        "de": "...",
        "fr": "..."
    },
    "message": {
        "en": "...",
        "es": "...",
        "de": "...",
        "fr": "..."
    },
    "due_date": "2019-02-34 12:34:56"
}
```

For **field_modification** type
```json    
{
    "field": "xxx_field_alias",
    "expression": "new value"
}
```

For **form_assignment** type
```json    
{
    "title": {
        "en": "...",
        "es": "...",
        "de": "...",
        "fr": "..."
    },
    "description": {
        "en": "...",
        "es": "...",
        "de": "...",
        "fr": "..."
    },
    "form": 12345,
    "assignment_rules": {
        "type": "permanent|unique|periodic",
        "settings": [
            {
            "alias": "start_date",
            "value": "Y-m-d H:i:s"
            }
        ]
    }
}
```

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: '*'
          
    + Attributes(Trigger Create)

+ Response 201 (application/json)

    + Attributes
        
        + data (Trigger, fixed-type)
    
+ Response 400 (application/json)
              
    + Attributes (Response 400)

<!-- include(../error_responses.md) -->
