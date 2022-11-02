# Depot

## Run Dev Server

`bin/dev`

## Command History

`rails new depot --css tailwind`

`bundle exec rails g scaffold Product title:string description:text image_url:string price:decimal`

`bundle exec rails generate controller Store index`

`bundle exec rails dev:cache`

`bundle exec rails generate scaffold Cart`

`bin/rails generate scaffold LineItem product:references cart:belongs_to`

`bin/rails generate migration add_quantity_to_line_items quantity:integer`

`bin/rails generate migration combine_items_in_cart`
