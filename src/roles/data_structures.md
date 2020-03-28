# Data Structures

## Role (object)
+ id: 1 (number, required)
+ alias: `role_alias` (string, required)
+ name: `Role Name` (string, required)
+ description: Role Description (string, required)
+ `is_active`: true (boolean, required)
+ status: `ok` (enum[string], required)
    - ok
    - pending
    - processing
    - conflict
    - failed
+ `assignment_mode`: `role_driven` (enum[string], required)
    - `user_driven`
    - `role_driven`
    - `system_driven`
+ permissions (object, required)
    + `can_edit`: true (boolean, required)
    + `can_delete`: true (boolean, required)
+ `relation_type` (object, required)
    + alias: `relation_alias` (string, required)
    + name: `Relation Name` (string, required)
+ `relation_field` (Field, optional)
+ `assignment_rules` (array, optional)
    + (object, required)
        + assignee (object, required)
            + type: `all` (enum[string], required)
                - `all`
                - `user`
                - `group`
            + details (object, required)
        + population (object, required)
            + type: `all` (enum[string], required)
                - `all`
                - `user`
                - `group`
            + details (object, required)
+ `field_access_rules` (object, optional)
    + domains (object, required)
        + includes (array[Domain], required)
        + excludes (array[Domain], required)
    + privacy_level (Privacy Level, required)
+ features (array[Permission], optional)
+ modules (array[Module], optional)
+ `pso_type` (Pso Type, optional)

## Role Create (object)
+ name (Translatable Text, required)
+ description (Translatable Text, optional)
+ `relation_field`: `hr` (string, optional)
+ `relation_type`: `relation_type` (string, optional)
+ `pso_type`: `usr` (string, required)
+ `assignment_rules` (array, required)
    + (object, required)
        + assignee (object, required)
            + type (enum[string], required)
                - all
                - user
                - group
            + details (object, required)
        + population (object, required)
            + type (enum[string], required)
                - all
                - user
                - group
            + details (object, required)
+ `field_access_rules` (required, object)
    + domains (object, required)
        + includes: `domain_alias` (array[string], required)
        + excludes: `domain_alias` (array[string], required)
    + privacy_level: public (string, required)
+ modules (array, required)
    + (object, required)
        + id: 1 (number, required)
        + permissions (object, required)
            + access: true (boolean, required)
            + synchronisation (boolean, required)
         
## Role Update (object)
+ name (Translatable Text, optional)
+ description (Translatable Text, optional)
+ `pso_type`: `usr` (string, required)
+ `assignment_rules` (array, required)
    + (object, required)
        + assignee (object, required)
            + type (enum[string], required)
                - all
                - user
                - group
            + details (object, required)
        + population (object, required)
            + type (enum[string], required)
                - all
                - user
                - group
            + details (object, required)
+ `field_access_rules` (required, object)
    + domains (object, required)
        + includes: `domain_alias` (array[string], required)
        + excludes: `domain_alias` (array[string], required)
    + `privacy_level`: public (string, required)
+ modules (array, optional)
    + (object, required)
        + id: 1 (number, required)
        + permissions (object, required)
            + access: true (boolean, required)
            + synchronisation (boolean, required)
