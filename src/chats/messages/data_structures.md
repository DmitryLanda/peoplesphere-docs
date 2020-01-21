# Data Structures

## Chat Message Create (object)
+ message: Message body (string, required, nullable)
    max length 255 chars.
+ attachments (array, optional)
    - (object)
        - url: `http://example.com/images/logo.jpg` (string, required)
            should be valid url format.
        - original_name: `logo` (string, optional)
            max length 255 chars.
        - format: `jpg` (string, optional)
            max length 255 chars.

## Chat Message Attachment (object)
+ id: 1 (number, required)
+ url: `http://example.com/images/logo.jpg` (string, required)
+ original_name: `logo` (string, required)
+ format: `jpg` (string, required)

## Chat Message (object)
+ id: 1 (number, required)
+ author (User, required, fixed-type)
+ chat_id: 1 (number, required)
+ message: `Message text` (string, required)
+ attachments (array[Chat Message Attachment], optional, fixed-type)
+ created_at: `2019-04-24 11:47:47` (string, required)
