### Create [POST /triggers]

Create trigger item

Handler type may be one of: notification, field_modification, action

Schedule handler payload rules:
+ relation_recipients - (required, array)
+ relation_recipients - (required, alpha_dash)
+ title - (required, array, min)
+ title - (string)
+ message - (required, array, min:1)
+ message - (string)
+ due_date - (required, date_format:`Y-m-d TH:i:s Z`),

Form handler payload rules:
+ workflow - (required, array),
+ workflow.* - (required, enum[user,owner,admin,manager,hr])
+ form - (required, string)
+ title - (required, array)
+ description - (required, array)
+ description.* - (string)
+ settings - (present, array of settings)
+ settings.*.setting_id - (integer)
+ settings.*.alias - (string)
+ settings.*.value - (present, nullable)
+ target_population - (required_without:rules)
+ target_population.type - (enum[public, user, groups, self])
+ target_population.details - (nullable)
+ target_population.details.dynamic - (nullable)
+ target_population.details.includes - (nullable, array)
+ target_population.details.includes.* - (string)
+ target_population.details.excludes - (nullable, array)
+ target_population.details.excludes.* - (string)
+ target_population.details.specific_psos - (array)
+ target_population.details.specific_psos.* - (nullable)
+ assignment_rules - (array)
+ assignment_rules.*.access_rule_type_id - (integer)
+ assignment_rules.*.access_rule_type_alias - (string)
+ assignment_rules.*.value - (numeric)

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
