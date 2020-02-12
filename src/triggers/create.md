### Create [POST /triggers]

## Create new trigger entry
 Most part of properties are simple and described in JSON schema. 
 But there are 2 properties (**conditions** and **handlers**) that need to be explained.  

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

Compare field value with raw value example
```json
{
    "type": "condition",
    "field": "usr_email",
    "operator": "==",
    "raw_value": "john.doe@example.com"
}
``` 

Compare two field values example
```json
{
    "type": "condition",
    "field": "usr_first_name",
    "operator": "==",
    "field_value": "usr_last_name"
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
     - pso_deletion
     - data_deletion
 - population (describes PSO that will be used as population\recipient once trigger executed)
 - payload (additional info that depends on **type**)

#### Handler population
Population is array of different populations. Each kind of population item defined by **type** property.
Available types:
 - all (all active PSOs of given type - see **pso_type** in main section)
 - group (specified groups)
 - pso (specific PSOs)
 - relation (self or alias of field with relation type)
 
Population items can be combined. So in population array we may have few entries with different types

Examples:
For **all** type:
```json
[
    {
        "type": "all",
        "details": null
    }
]
```

For **self** type:
```json
[
    {
        "type": "self",
        "details": null
    }
]
```

For **group** type:
```json
[
    {
      "type": "group",
      "details": {
        "dynamic": true,
        "includes": ["group_a", "group_b"],
        "excludes": ["group_c", "group_d"]
      }
    }
]
```

For **pso** type:
```json
[
    {
      "type": "pso",
      "details": [123, 456]
    }
]
```

For **relation** type:
```json
[
    {
      "type": "relation",
      "details": [
        "user",
        "manager",
        "..."
      ]
    }
]
```

Mixed types:
```json
[
    {
      "type": "group",
      "details": {
        "dynamic": true,
        "includes": ["group_a", "group_b"],
        "excludes": ["group_c", "group_d"]
      }
    },
    {
      "type": "pso",
      "details": [123, 456]
    },
    {
      "type": "relation",
      "details": [
        "self",
        "manager",
        "..."
      ]
    }
]
```


#### Handler substitutions

Supports only for `notification`, `action_todo`, `action_schedule` handler types.

Substitutions is an array of variables that presented in `title` and `message` fields. And used to replace these variables in the text to data from trigger recipients (they described at `Population` section) or from psos found through conditions.

Variables from recipients: 

syntax: {$<field_alias>}. 

Variables from psos found through conditions:

syntax: {@usr_first_name}. 
   
Example: 
```json
[
  "{$usr_first_name}",
  "{$usr_last_name}" 
]
```



#### Handler payload examples

For **notification** type

If the trigger has conditions and {@} variables in `substitutions` array. 

All recipients are getting as many notifications as psos had found through conditions.

If no {@} variable in `substitutions` array, recipients are getting only one notification. 
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
    ],
    "raw_recipients": [
        "aaa@email.com",
        "bbb@email.com"
    ],
    "substitutions": [
        "{$usr_first_name}",
        "{$usr_last_name}",
        "{@usr_first_name}",
    ]
}
```

For **action_todo** type

If the trigger has conditions and {@} variables in `substitutions` array.
 
For each recipient will be created as many actions as psos had found through conditions.

If no {@} variable in `substitutions` array, only one action will be created for each recipient
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
    "due_date": "2019-02-34 12:34:56",
    "substitutions": [
        "{$usr_first_name}",
        "{$usr_last_name}",
        "{@usr_first_name}",
    ]
}
```

For **action_schedule** type

If the trigger has conditions and {@} variables in `substitutions` array.
 
For each recipient will be created as many actions as psos had found through conditions.

If no {@} variable in `substitutions` array, only one action will be created for each recipient
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
    "due_date": "2019-02-34 12:34:56",
    "substitutions": [
        "{$usr_first_name}",
        "{$usr_last_name}",
        "{@usr_first_name}",
    ]
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

For **pso_deletion** type

```
Should be "null" or even omitted
```


For **data_deletion** type
```json
{
    "clear_history": clear_historyfalse,
    "fields": [
        'usr_field_a',
        'usr_field_b'
    ]
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
