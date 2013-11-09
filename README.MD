http://www.danneu.com/posts/15-a-simple-blog-with-sinatra-and-active-record-some-useful-tools/

Tutorial: How to do a simple site on sinatra and active record, good for resources, instructions


Topics:
Ruby:
  - datatypes: string, integer, array
  - running code from a file
  - describe block syntax for each loops
  - intro to ruby methods

Sinatra
  - start with very simple. Just do index.rb with get "/" do
    - talk about HTTP actions (just go over get but maybe mention post as well?)

  - print out something on our page
    - show how it only prints the last line
    - refer back to how we talked about how methods return what is on the last line

  - download shotgun to autoreload our code rather than having to restart

  - render an erb template (maybe haml or slim?)
    - practice arrays here
    - practice writing interesting things with arrays (changing them to be sillier, ooga-booga)
    - create topics and votes but not persisted, just static data

  - deploy to heroku
    - learn a little bit of git.
    - go to heroku docs (find them from google) that show you how to deploy something on heroku
    - practice reading the docs
      - need config.ru
      - need Gemfile
      - bundle
      - remember all the gems you have installed, show how the Gemfile is really useful for this reason! 

  - add a database model
    - intro to databases, why you would want to use them?
    - add activerecord to sinatra with local sqlite file
    - make a migration to create your topics
    - create some topics in your console (tux)
    - deploy your database to heroku, make sure you get that right
    - add some topics on heroku

  - Webform
    - learn about post action
    - make a form to create topics
    - make a page to see all topics
    - make a page for individual topics
    - redirects

  - Votes
    - etc. etc. etc.

