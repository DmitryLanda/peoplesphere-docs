# Data Structures

## Poll (object)
+ id: 1 (number, required)
+ name: Poll Name (string, required)
+ `starts_at`: `2019-01-24 15:34:58` (date-time, required)
+ questions (object, required)
    + name: question name (string, required)
    + `data_type`: data_type_alias (string, required)
    + answers (object, required)
        + value: `value` (string, required)
        + count: 1 (number, required)