### Create [POST /actions]

## Create new action
To create action user must have one of specific permissions:
 - `actions.create.*` - allows to create any type of actions
 - `actions.create.todo` - allows to create only `todo` actions
 - `actions.create.schedule` - allows to create only `schedule` actions

### Action population
Population is array of different populations. Each kind of population item defined by **type** property.
Available types:
 - all (all active PSOs of given type - see **pso_type** in main section)
 - group (specified groups)
 - pso (specific PSOs)
 - relation (user or alias of field with relation type)
 
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

### Action substitutions

Substitutions is an array of variables that presented in `title`, `subtitle` and `details` fields. And used to replace these variables in the text to data from Action recipients (they described at `Population` section).
In this case only `{$<field_alias>}` syntax supported, because this route doesn't support any conditions.
   
Example: 
```json
[
  "{$usr_first_name}",
  "{$usr_last_name}" 
]
``` 
**warning** Substitutions supports only in create request.

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target feature>
          
    + Attributes(Create Action)

+ Response 201 (application/json)

    + Attributes
        
        + data (Entity ID, fixed-type)
    
+ Response 400 (application/json)
              
    + Attributes (Response 400)

<!-- include(../error_responses.md) -->
