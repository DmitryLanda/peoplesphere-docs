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
    - pause
    - resume
+ declared_location (required, Location)
    Location specified by User
+ reported_location (required, Location)
    Real location captured by GPS 
+ in_tolerance_radius: true (required, boolean)

## Time Tracking Status (object)
+ duration: 123 (required, number)
    Total time duration for the tracker (in minutes) 
+ last_event (Time Tracking Event, required)

## Create Time Tracking Event (object)
+ event: start (required, enum[string])
    - start
    - stop
    - pause
    - resume
+ declared_location (required, number)
    ID of Location PSO that user specified as his current place 
+ reported_location (required, Location)
    Real location object captured with help of GPS
