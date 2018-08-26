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


## To use
### bundle
fork/clone this repo. Once you have the files available at your local machine, navigate to the folder and then run the following command.
```console
bundle
```
this will make sure you have all the required dependencies for this project to run at your local machine.
### Postgres DB
next we need to make sure we have a Postgres db set up so that we can request and display the data we're intending to show on our website.
to do this first head to Postgres website and download [Postgres](https://www.postgresql.org/download/).
using a unix based console you can then run the command
 ```console
psql
 ```
Inside the psql environment you can then use this command to create a new database. chose to name it novels as the app is set to look for the novels database. if you wish to use a different name, then please go to novel models/novel.rb and change the database information to make it relevant to your database name
```sql
CREATE DATABASE novels;
```
you can then run the command - make sure you're in the root directory for this to work.
```console
psql -d novels -f seed.sql
```
This will create a table named novels in your database, and add 4 records to that table.

### Rack
Once Bundle has downloaded all the gems it needs and you've setup the Postgres database as aforementioned you can then follow it up with
```console
rackup
```
This will start the Ruby Web-server interface, which has its own middleware to handle our resources if the project expands to multiple resources.
### run on browser
Finally on your browser, navigate to the url [localhost:9292/](localhost:9292/) which should then show you the entire website.
