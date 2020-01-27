# Data Structures

## DataTypeSetting (object)
+ id: 1 (number, required)
+ alias: some_string (string, required)
+ name: DataType Setting Name (string, required)
+ is_required: true (boolean, required)

## DataType (object)
+ id: 1 (number, required)
+ alias: some_string (string, required)
+ name: DataType Name (string, required)
+ supports_collection: true (boolean, required)
+ supports_read_only: true (boolean, required)
+ supports_unique: true (boolean, required)
+ settings (array[DataTypeSetting], fixed-type)
