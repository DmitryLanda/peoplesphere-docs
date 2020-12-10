# Data Structures

## Delegation Rule Type (enum)
  + period
  + permanent

## Delegation Rule Category (enum)
  + form
  + other

## Delegation Rule Category Item (array)

+ (object)
    + alias: `form` (string)
    + name: `Form` (string)
    + rules (array[Delegation Rule Item], fixed-type)

+ (object)
    + alias: `other` (string)
    + name: `Other` (string)
    + rules (array[Delegation Rule Item], fixed-type)

## Delegation Rule Item (object)

+ id: 1 (number)
+ delegate_to (number)
+ start_date: `2020-01-01` (date)
+ end_date: `null` (date, nullable)
+ type (Delegation Rule Type)
  
## Delegation Rules Create (array)
+ (object)
  + delegate_to (number, required)
  + start_date: `2020-01-01` (date, required)
  + end_date: `2020-01-01` (date, nullable)
  + type (Delegation Rule Type)
    
## Delegation Rules Update (array)
+ (object)
  + id (number, required)
  + delegate_to (number, required)
  + start_date: `2020-01-01` (date, required)
  + end_date: `2020-01-01` (date, nullable)
  + type (Delegation Rule Type)
  

