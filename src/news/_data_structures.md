# Data Structures

## Meta News (Meta)
+ pagination (Pagination News)

## Pagination News (Pagination)
+ links (Pagination Links News)

## Pagination Links News (object)
+ previous: `http://example.com/api/news?page=1`
+ next: `http://example.com/api/news?page=3`

## News Create (object)
+ type_id: 1 (number)
+ logo: string (string)
+ banner: string (string)
+ external_link: string (string)
+ is_promote_as_top: true (boolean)
+ publish_at: `2019-04-24T11:47:47.673Z` (string)
+ title (Translatable Text)
+ body (Translatable Text)
+ button_text (Translatable Text)

## News Update (News Create)

## News (object)
+ id: 1 (number)
+ type_id: 0 (number)
+ title: string (string)
+ body: string (string)
+ expand_text_button: string (string)
+ is_top_news: true (boolean)
+ publish_at: `2019-04-24T11:47:47.673Z` (string)
+ editable: true (boolean)
+ creator (Creator)

## Creator (object)
+ id: 1 (number) - It is possible to put some information, f.e. link on related API endpoint
+ first_name: string (string)
+ last_name: string (string)
+ professional_email: string (string)
+ role: string (string)
+ is_active: true (boolean)
+ status: string (string)
+ user_photo: string (string)
+ modules (array[Module])
+ features (array[Feature])

## Module (object)
+ id: 1 (number)
+ name: string (string)
+ alias: string (string)
+ web_url: string (string)
+ icon: string (string)

## Feature (object)
+ alias: string (string)
+ name: string (string)
+ description: string (string)
