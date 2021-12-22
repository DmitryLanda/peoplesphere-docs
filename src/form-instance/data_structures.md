# Data Structures

## FormInstance (object)
+ id: 1 (number, required)
+ name (Translatable Text, required)
+ description (Translatable Text, required)
+ form_id: 123 (number, required)
+ is_active: true (boolean, required)
+ removable: false (boolean, required)
+ effective_date: `2019-04-24 11:47:47` (string)

## FormInstance ListItem (object)
+ id: 1 (number, required)
+ name: `Form instance name` (string, required)
+ description: `Form instance description` (string, required)
+ form_id: 123 (number, required)
+ is_active: true (boolean, required)
+ removable: false (boolean, required)
+ effective_date: `2019-04-24 11:47:47` (string)

## FormInstance Update (object)
+ is_active: true (boolean, optional)
+ is_hidden: true (boolean, required)
