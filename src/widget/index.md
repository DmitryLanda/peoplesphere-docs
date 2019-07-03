<!-- include(data_structures.md) -->

# Group HTML Widgets
HTML Widgets it is a way to customize Welcome Page screen by adding blocks with custom content.
This content controlled by customer and can be any: plain text, html or even iframe

Each created widget will have it's own feature (permission) that must be use to control access to widget through roles

Management Permissions: 
 - `widget_management.create` - Allows to create new widgets
 - `widget_management.view` - Allows to see list of widgets/specified widget
 - `widget_management.edit`- Allows to update specified widget
 - `widget_management.delete` - Allows to remove specified widget
 
Widget specific permissions: 
 - `widget.<name>.view` - Allows to get specific widget. Should be used on Welcome Page only

## HTML Widgets [/widgets]

<!-- include(list.md) -->
<!-- include(show.md) -->
<!-- include(create.md) -->
<!-- include(update.md) -->
<!-- include(delete.md) -->
