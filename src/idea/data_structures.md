# Data Structures

## Idea Create (object)
+ name: `Idea name` (string, required)
+ body: `Idea body` (string, optional)
+ creator_id: 1 (number, required)
+ category_id: 1 (number, required)

## Idea Update (object)
+ name: `Idea name` (string, optional)
+ body: `Idea body` (string, optional)
+ status_id: 1 (number, optional)
+ category_id: 1 (number, optional)

## Idea (object)
+ id: 123 (number, required)
+ creator (User, required, fixed-type)
+ moderator (User, optional)
+ status (IdeaStatus, required, fixed-type)
+ category (Category, required, fixed-type)
+ name: `Idea name` (string, required)
+ body: `Idea body` (string, optional, nullable)
+ comments_count: 123 (number, required)
+ votes_count: 123 (number, required)
+ is_voted: true (boolean, required)

## IdeaStatus (object)
+ id: 123 (number, required)
+ name_key_id: 123 (number, required)
+ alias: opened (enum[string], required)
    - opened
    - accepted
    - rejected
    - implemented
    - closed

## IdeaComment (object)
+ id: 123 (number, required)
+ creator (User, required, fixed-type)
+ body: `Comment body text` (string, required)
+ idea_id: 234 (number, required)
+ created_at: `2019-01-01 23:34:40` (date-time, required) 

## IdeaComment Create (object)
+ body: `Idea body` (string, optional)

## IdeaComment Update (object)
+ body: `Idea body` (string, optional)
