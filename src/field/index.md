<!-- include(data_structures.md) -->

# Group Fields

Fields instances data.

## Validation attribute

Fields can handle basic data validation via attribute `validation`. System can handle 3 type validation: `regexp`
, `predefined` and `builder`.

### RegExp example
```json
{
  "type": "regexp",
  "attributes": {
    "expression": "reg-exp expression"
  },
  "value_example": "some string",
  "error_message": {
    "en": "En translation",
    "fr": "Fr translation",
    "es": "Es translation",
    "de": "De translation"
  }
}
```

### Predefined example
```json
{
  "type": "predefined",
  "attributes": {
    "rule_alias": "some-rule-alias"
  },
  "value_example": "some string",
  "error_message": {
    "en": "En translation",
    "fr": "Fr translation",
    "es": "Es translation",
    "de": "De translation"
  }
}
```

## Fields [/fields]

<!-- include(list.md) -->
<!-- include(create.md) -->
<!-- include(show.md) -->
<!-- include(delete.md) -->
<!-- include(update.md) -->
<!-- include(options.md) -->
