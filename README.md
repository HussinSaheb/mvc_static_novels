# Novel chapters
This project aims to use all 7 restful routes with the mvc design pattern to create a website that hosts web novel chapters using the Ruby library Sinatra. The chapters will live in a Postgres db and called upon when requested by the various routes. This project will use static assets to style and make the website more friendly to the users.

The database will be seeded with sample data similar to the table below

| id | novel                    | chapter_number | chapter_title           | chapter_body   |
|----|--------------------------|----------------|-------------------------|----------------|
| 0  | I shall seal the heavens | 1              | Scholar Meng Hao        | 2k words in db |
| 1  | I shall seal the heavens | 2              | The Reliance Sect       | 2k words in db |
| 2  | I shall seal the heavens | 3              | Promotion to outer sect | 2k words in db |

## Requirement
* implement 7 restful routes
* Use Sinatra library
* implement static assets using Sinatra
* display only 200 character of the chapter body on the "/" route
* display entire chapter in the "/:id" route.
