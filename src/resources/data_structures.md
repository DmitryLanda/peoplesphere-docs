# Data Structures

## Data Type Setting (object)
+ id: 1 (number, required)
+ name: `Data Type Setting Name` (string, required)
+ alias: `data_type_setting_alias` (string, required)
+ is_required: true (boolean, required)

## Data Type (object)
+ id: 1 (number, required)
+ name: `Data Type Name` (string, required)
+ alias: `data_type_alias` (string, required)
+ settings (array[Data Type Setting], fixed-type)
+ supports_collection: false (boolean, required)
+ supports_read_only: false (boolean, required)
+ supports_unique: false (boolean, required)

## Privacy Level (object)
+ id: 1 (number, required)
+ alias: `privacy_level_alias` (string, required)
+ name: `Privacy Level Name` (string, required)
+ level: 500 (number, required)

## Field Category (object)
+ id: 1 (number, required)
+ alias: `field_category_alias` (string, required)
+ name: `Field Category Name` (string, required)
+ position: 1 (number, required)
+ system_required: false (boolean, required)
+ description: `Field Category Description` (string, required)
+ is_active: true (boolean, required)
+ pso_type (Pso Type, optional)

## News Type (object)
+ id: 1 (number, required)
+ alias: `news_type_alias` (string, required)
+ name: `News Type Name` (string, required)

## Idea Category (object)
+ id: 1 (number, required)
+ alias: `idea_category_alias` (string, required)
+ name: `Idea Category Name` (string, required)

## Idea Status (object)
+ id: 1 (number, required)
+ alias: `idea_status_alias` (string, required)
+ name: `Idea Status Name` (string, required)

## Log Action (object)
+ id: 1 (number, required)
+ alias: `history_action_alias` (string, required)
+ name: `History Action Name` (string, required)

## Field Permission (object)
+ id: 1 (number, required)
+ alias: `field_permission_alias` (string, required)
+ name: `Field Permission Name` (string, required)

## Setting (object)
+ id: 1 (number, required)
+ alias: `setting_alias` (string, required)
+ name: `Setting Name` (string, required)

## Action Type (object)
+ id: 1 (number, required)
+ alias: `action_type_alias` (string, required)
+ name: `Action Type Name` (string, required)
+ category: `action_type_category_alias` (string, nullable)

## Notification Type (object)
+ id: 1 (number, required)
+ alias: `notification_type_alias` (string, required)
+ name: `Notification Type Name` (string, required)

## Population Type (object)
+ id: 1 (number, required)
+ alias: `population_type_alias` (string, required)
+ name: `Population Type Name` (string, required)

## Permission (object)
+ id: 1 (number, required)
+ alias: `feature_alias` (string, required)
+ name: `Feature Name` (string, required)

## SignatureWorkflow Item (array)
+ (object)
    + entity_id: 0 (number, required)
    + title: Self (string, required)
    + type (enum[string], required)
        - relation
        - user
    + step: 1 (number, required)
+ (object)
    + entity_id: 123 (number, required)
    + title: John Snow (string, required)
    + type (enum[string], required)
        - user
        - relation
    + step: 2 (number, required)

