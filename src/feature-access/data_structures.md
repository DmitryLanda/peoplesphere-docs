# Data Structures

## Feature Access (object)

+ id: 1 (number, required)
+ alias: `role_alias` (string, required)
+ pso_type (object, required)
  + id: 1 (number, required)
  + alias: usr (string, required)
  + name: User (string, required)
+ name: `Role Name` (string, required)
+ description: Role Description (string, required)
+ `is_active`: true (boolean, required)
+ status: `ok` (enum[string], required)
    - ok
    - pending
    - processing
    - conflict
    - failed
+ permissions (object, required)
    + `can_edit`: true (boolean, required)
    + `can_delete`: true (boolean, required)
+ population (object, required)
    + type: `all` (enum[string], required)
        - `all`
        - `user`
        - `group`
    + details (object, required)
+ features (array, required)
    + (object)
        + alias: Feature (string, required)
        + name: Feature Name (string)
        + pso_type_specific: true (boolean)
        + action_specific: true (boolean)
        + domain_specific: true (boolean)
        + items (array, optional)
            + (object)
                + actions (array)
                    + (object)
                        + id: 0 (number)
                        + name: Action name (string)
                        + alias: alias (string)
                + domains (object)
                    + includes (array[Domain], required)
                    + excludes (array[Domain], required)
                + pso_types (array)
                    + (object)
                        + id: 0 (number)
                        + name: Always all types (string)
                        + alias: alias (string)
        + available_actions (array)
            + (object)
                + name: Action Name (string)
                + alias: action_alias (string)

## Feature Access List (object)

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
+ permissions (object, required)
    + `can_edit`: true (boolean, required)
    + `can_delete`: true (boolean, required)
+ population (object, required)
    + type: `all` (enum[string], required)
        - `all`
        - `user`
        - `group`
    + details (object, required)

## Feature Access Create (object)

+ name: (Translatable Text, required)
+ description: (Translatable Text, optional)
+ `is_active`: true (required, boolean)
+ population (object, required)
    + type (enum[string], required)
        - all
        - user
        - group
    + details (object, required)
+ features (array, required)
    + (object)
        + alias: Feature (string, required)
        + items (array, optional)
            + (object)
                + actions (array[string])
                + domains (object)
                    + includes: `domain_alias` (array[string], required)
                    + excludes: `domain_alias` (array[string], required)
                + pso_types (array[string])

## Feature Access Update (object)

+ name (Translatable Text, required)
+ description (Translatable Text, optional)
+ `is_active`: true (required, boolean)
+ population (object, required)
    + type (enum[string], required)
        - all
        - user
        - group
    + details (object, required)
+ features (array, required)
    + (object)
        + alias: Feature (string, required)
        + items (array, optional)
            + (object)
                + actions (array[string])
                + domains (object)
                    + includes: `domain_alias` (array[string], required)
                    + excludes: `domain_alias` (array[string], required)
                + pso_types (array[string])