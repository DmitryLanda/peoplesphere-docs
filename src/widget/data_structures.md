# Data Structures

## Widget (object)
+ id: 123 (number, required)
+ name: Widget Name (string, required)
+ alias: my_widget (string, required)
+ content: Widget content, can has html tags (string, required)
+ is_active: true (boolean, required)
+ view_mode: inline (required, string)
    Defines the way it can be rendered on UI. 
    **tab** for separate tabs on Welcome Page
    **inline** to be appended to the first tab on Welcome Page  
+ created_at: `2019-01-01 23:34:40` (date-time, required)
+ updated_at: `2019-01-01 23:34:40` (date-time, required)

## Create Widget (object)
+ alias: my_widget (string, required)
+ name (Translatable Text, required)
+ content (Translatable Text, required)
+ is_active: true (boolean, required)
+ view_mode: tab (required, string) - inline and tab are possible values

## Update Widget (object)
+ name (Translatable Text)
+ content (Translatable Text)
+ is_active: true (boolean)
+ view_mode: inline (string) - inline and tab are possible values
