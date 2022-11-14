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

`bin/rails generate channel products`

`bin/rails generate scaffold Order name address:text email pay_type:integer`

`bin/rails generate migration add_order_to_line_item order:references`

`bin/rails generate stimulus payment`

`bin/rails generate mailer Order received shipped`

`bin/rails generate scaffold User name:string password:digest`
