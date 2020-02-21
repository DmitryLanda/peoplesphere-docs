# Data Structures

## Summary (object)
+ first_name: John (string, required)
+ last_name: Snow (string, required)
+ image: `https://rest-dev.monportailrh.com/storage/company/images/image.jpeg` (string, required)
+ is_active: true (boolean, required)

## Profile Form (object)
+ id: 1 (number, required)
+ name: `profile form name` (string, required)
+ description: `profile form description` (string, required)
+ is_active: true (boolean, required)
+ active_field: null (nullable, required)

## Module (object)
+ id: 1 (number, required)
+ name: `Module name` (string, required)
+ alias: `mdl` (string, required)
+ app_url (object, required)
    + android: `http://android/app/url` (string, required)
    + ios: `http://ios/app/url` (string, required)
+ store_url (object, required)
    + android: `http://android/store/url` (string, required)
    + ios: `http://ios/store/url` (string, required)
+ web_url: `http://web/url` (string, required)
+ icon: `http://image.png` (string, required)

## Brief Pso
+ id: 1 (number, required)
+ first_name: John (string, required)
+ last_name: Snow (string, required)
+ professional_email: john.snow@email.com (string, required)
+ role: admin (string, required)
+ is_active: true (boolean, required)
+ status (string, required)
+ user_photo: `https://rest-dev.monportailrh.com/storage/company/images/image.jpeg` (string, required)
+ modules (array[Module], optional)
+ features (array[Permission], optional)
+ `internal_modules`: time_tracking (array[string], optional)

## FieldForm With Value (object)
+ id: 1 (number, required)
+ name: Field Name (string, required)
+ position: 5 (number, required)
+ alias: usr_first_name (string, required)
+ has_unique_data: false (boolean, required) - whether field requires values to be unique across system
+ has_value: true (boolean, required) - whether field has at least one value submitted
+ removable: false (boolean, required) - whether field can be removed from system
+ is_active: true (boolean, required)
+ list: false (boolean, required) - whether field can handle collection of values
+ read_only: false (boolean, required) - whether field value can be changed
+ required: true (boolean, required) - whether field value required by system
+ type (Data Type, optional, fixed-type)
+ category (Category, optional, fixed-type)
+ domains (array[Domain], optional, fixed-type)
+ privacy_level (Sensitivity, optional, fixed-type)
+ pso_type (Pso Type, optional, fixed-type)
+ items (array[Field], nullable, fixed-type)
+ options (array[Field Option], nullable, fixed-type) - List of options with possible (allowed) values. 
+ settings (array[string], optional, fixed-type) - Common field settings
+ is_locked: false (boolean, required)
+ `value_details`: value1, value2 (array[string], required)
+ values_count: 2 (number, required)
+ assignment_settings (array, required)
    + (object, required)
        + setting: `public` (string, required)
        + value: `1` (string, required)
+ access_permissions (object, required)
    + history: true (boolean, required)
    + view: true (boolean, required)
    + edit: true (boolean, required)
+ assignment_permissions (object, required)
    + permissions (object, required)
        + id: 1 (number, required)
        + name: `View` (string, required)
        + alias: `view` (string, required) 
    + access_list: 0,1,1 (array, required) - user, manager, hr

## Form Data (object)
+ id: 1 (number, required)
+ name: `Form assignment name` (string, required)
+ description: `Form assignment description` (string, required)
+ is_active: true (boolean, required)
+ fields (FieldForm With Value, required)

## Store Token (object)
+ token (string, required)