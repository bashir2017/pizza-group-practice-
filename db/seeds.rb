# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pizza1 = PizzaPie.create(types: "Hawaiian", toppings: "pineapple, cheese", size: "large")
pizza2 = PizzaPie.create(types: "Spec", toppings: "pineapple, Yes_cheese", size: "medium")
pizza3 = PizzaPie.create(types: "Low", toppings: "potatoes, no_cheese", size: "small")

user1 = User.create(name: "Rei")
user2 = User.create(name: "Jack")
user3 = User.create(name: "Michelle")

Order.create(pizza_pie_id:  pizza1.id ,  user_id: user1.id)
Order.create(pizza_pie_id:  pizza1.id ,  user_id: user2.id)
Order.create(pizza_pie_id:  pizza2.id ,  user_id: user3.id)
Order.create(pizza_pie_id:  pizza2.id ,  user_id: user1.id)
Order.create(pizza_pie_id:  pizza3.id ,  user_id: user2.id)