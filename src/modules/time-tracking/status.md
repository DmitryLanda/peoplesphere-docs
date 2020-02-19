### Status [POST /time-tracking/status]

Get actual state of the tracker. It returns last known event and total duration (in minutes) for the tracker

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target features>
          
+ Response 200 (application/json)

    + Attributes
        
        + data (Time Tracking Status, fixed-type)
    
+ Response 400 (application/json)
              
    + Attributes (Response 400)

<!-- include(../../error_responses.md) -->
