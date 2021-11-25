# Data Structures

## Location (object)
+ name: United States of America ,Pueblo (required, string)
+ coordinates
    + lat: 30.312562 (required, number)
    + long: 59.873794 (required, number)

## Time Tracking Event (object)
+ date: `2019-04-24 11:47:47` (required, date-time)
+ event: start (required, enum[string])
    - start
    - stop
+ declared_location (Location)
    Location specified by User
+ reported_location (Location)
    Real location captured by GPS 
+ in_tolerance_radius: true (required, boolean)

## Time Tracking Status (object)
+ last_event (Time Tracking Event, required)

## Create Time Tracking Event (object)
+ event: start (required, enum[string])
    - start
    - stop
+ declared_location (number)
    ID of Location PSO that user specified as his current place 
+ reported_location (Location)
    Real location object captured with help of GPS

