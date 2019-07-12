# Data Structures

## Widget (object)
+ alias: my_widget (string, required)
+ name: Widget Name (string, required)
+ view_mode: inline (required, string)
    Defines the way it can be rendered on UI. 
    **tab** for separate tabs on Welcome Page
    **inline** to be appended to the first tab on Welcome Page  
+ content: Widget content, can has html tags (string, required)
+ created_at: `2019-01-01 23:34:40` (date-time)
+ updated_at: `2019-01-01 23:34:40` (date-time)

## Create Widget (object)
+ name (Translatable Text, required)
+ content (Translatable Text, required)
+ view_mode: tab (required, string) - inline and tab are possible values

## Update Widget (object)
+ name (Translatable Text)
+ content (Translatable Text)
+ view_mode: inline (string) - inline and tab are possible values
