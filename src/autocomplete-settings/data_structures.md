# Data Structures

## Autocomplete provider (object)

+ name (Translatable Text, required)
+ alias: string (string, required)
+ base_url: https://exmaple.com/ (string, required)
+ single_value_supported: true (boolean, required)
+ parameters (array, required)
    + (object)
        + name: Name (string, required)
        + key: alias (string, required)
        + required: true (boolean, required)
