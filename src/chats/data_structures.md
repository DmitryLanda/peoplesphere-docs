# Data Structures

## Chat Create (object)
+ title (Translatable Text, required)

## Chat Update (object)
+ status: opened (enum[string], required)
    - opened
    - closed

## Chat (object)
+ id: 1 (number, required)
+ author (User, required, fixed-type)
+ title: `Chat title` (string, required)
+ is_viewed_by_user: true (boolean, required)
+ is_viewed_by_hr: true (boolean, required)
+ status: opened (enum[string], required)
    - opened
    - closed
+ created_at: `2019-04-24 11:47:47` (string, required)
+ updated_at: `2019-04-24 11:47:47` (string, required)