# README
Ruby on Rails backend for not-tumblr

## Resources & REST API table

| URL/ENDPOINT        | VERB   | DESCRIPTION                  |
|---------------------|--------|------------------------------|
| /accounts/{used_id} | GET    | \*Shows all posts under user |
| /posts/             | POST   | Creates post { content }     |
| /posts/{post_id}    | GET    | Returns post                 |
| /posts/{post_id}    | PUT    | Updates post { content }     |
| /posts/{post_id}    | DELETE | Destroys post                |

\*display additional info if `user_id` and `@current_user` from token decrypt match)


## TODO
- [x] decrypt jwt token and retrieve the user_id
- [x] Seeds and structure for SQLite dev server
- [x] CORs for production
- [x] Posts resource
- [ ] Production PostgreSQL server configs (clean up structure and seeds)
- [ ] Environment variables (JWT token)
- [ ] Generate UUID for each post to use as ID


* Ruby version: 2.7.0

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
