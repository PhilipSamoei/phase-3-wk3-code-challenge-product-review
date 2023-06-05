# E-commerce Product Reviews
This project focuses on building an e-commerce application that allows users to review products. The application consists of three models: User, Review, and Product. The relationships between these models are as follows:

1.A Product has many Users.
2.A User has many Products.
3.A Review belongs to a User and a Product.
4.The project requires implementing Active Record migrations, associations, and various class and instance methods to handle the functionality of the application.

## Setup
To set up the project, follow these steps:

1.Create a new project folder.
2.Create a new private GitHub repository 
## Migrations
Before proceeding with the other deliverables, start by creating a migration for the reviews table. The reviews table should have the following columns:

1.star_rating: An integer column that stores the rating given by the user.
2.comment: A string column that stores the user's comment.
3.user_id: A foreign key column that establishes the relationship with the User model.
4.product_id: A foreign key column that establishes the relationship with the Product model.
Create and run the migration to set up the reviews table. Once the migration is set up, create the Review class and use the `seeds.rb` file to create instances of reviews for testing.

## Object Association Methods
Implement the following methods in the respective classes to establish object associations:

 ### Review
user: Returns the User instance for this Review.
product: Returns the Product instance for this Review.
Product
reviews: Returns a collection of all the Reviews for the Product.
users: Returns a collection of all the Users who reviewed the Product.
User
reviews: Returns a collection of all the Reviews given by the User.
products: Returns a collection of all the Products reviewed by the User.
Test these methods using the rake console command and verify that they work as expected.

Aggregate and Association Methods
Implement the following methods to handle aggregate and association operations:

## Review
print_review: Prints a string in the terminal formatted as follows: "Review for {product name} by {user name}: {review star_rating}. {review comment}"
Product
leave_review(user, star_rating, comment): Creates a new Review in the database associated with the given User, star_rating, and comment for this Product.
print_all_reviews: Prints a string in the terminal representing each review for this product. Each review should be formatted as follows: "Review for {product name} by {user name}: {review star_rating}. {review comment}"
average_rating: Returns a float representing the average star rating for all reviews of this product.
User
favorite_product: Returns the Product instance that has the highest star rating from this User.
remove_reviews(product): Removes all of this User's reviews for the given Product. This involves deleting any rows from the reviews table associated with this User and the Product.
## Conclusion
After implementing all the methods, create instances of the classes in the run file and test the methods you have created. Use the rake console command to interact with your code and verify that the functionality works as expected.
MIT License

<Tec.hub>

Copyright (c) <2023> <Philip_Kerich>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
...