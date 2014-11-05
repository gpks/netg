# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Category.delete_all
Review.delete_all
Product.delete_all

user1 = User.create! :firstname => 'Kalinda', :lastname => 'Sharma', :email => 'kalinda@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'
user2 = User.create! :firstname => 'Alicia', :lastname => 'Florrick', :email => 'alicia@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'
user3 = User.create! :firstname => 'Cary', :lastname => 'Agos', :email => 'cary@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'
user4 = User.create! :firstname => 'Diane', :lastname => 'Lockheart', :email => 'diane@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'
admin = User.create! :firstname => 'Peter', :lastname => 'Florrick', :email => 'peter@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret', :admin => true

category1 = Category.create! :name => 'Fruits'
category2 = Category.create! :name => 'Vegetables'

product1 = Product.create! :title => "Apple", :description => "tasty", :price => 1.01, :category => category1, :user => user1
product2 = Product.create! :title => "Pear", :description => "juicy", :price => 1.01, :category => category1, :user => user2
product3 = Product.create! :title => "Carrot", :description => "orange", :price => 1.01, :category => category2, :user => user3
product4 = Product.create! :title => "Tomato", :description => "red", :price => 1.01, :category => category2, :user => user4
product5 = Product.create! :title => "Corn", :description => "lots of it", :price => 1.01, :category => category2, :user => admin

review1 = Review.create! :content => "Yummie", :rating => "5", :product => product1, :user => user1
review2 = Review.create! :content => "Love it", :rating => "5", :product => product2, :user => user2
review3 = Review.create! :content => "Healthy", :rating => "5", :product => product3, :user => user3
review4 = Review.create! :content => "My favourite", :rating => "5", :product => product4, :user => user4
review5 = Review.create! :content => "Love with salads", :rating => "5", :product => product5, :user => admin
    
    
