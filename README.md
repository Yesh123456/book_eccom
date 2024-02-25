# Books Ecommerce Website

- Features
  - Admin Dashboard for ShopOwners
  - ShopOwners can create Category, Products, and Update the Stock as per requirement
  - Open Users customer can add items to the cart and remove items from the cart.
  - Also provided checkout functionality with stripe.



#### How to run?

1. Install gems with:
  ```
  $ bundle install
  ```
2. Create database
  ```
  $ rails db:migrate RAILS_ENV=development
  ```
3. Run Rails server
  ```
  $ bundle exec rails s
  ```
4. Visit [http://localhost:3000/](http://localhost:3000/)