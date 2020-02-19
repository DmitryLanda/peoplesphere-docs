### Start / Stop / Pause / Resume [POST /time-tracking/events]

Add new event to manage state of tracker

+ Request
    + Headers

            Accept: application/json
            Content-Type: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target features>
          
    + Attributes(Create Time Tracking Event)

+ Response 201 (application/json)

    + Attributes
        
        + data (Time Tracking Status, fixed-type)
    
+ Response 400 (application/json)
              
    + Attributes (Response 400)

<!-- include(../../error_responses.md) -->
