### Show [GET /widgets/{alias}]

## **Get details for selected widget**

+ Parameters
    + alias: my_widget (required, string) - alias of the widget


+ Request
    + Headers
    
            Accept: application/json
            X-Application-Version: <client-name>/<version>
            X-App-features: <target permission>

+ Response 200 (application/json)
    + Attributes
        + data (Widget)

:[](../error_responses.md)