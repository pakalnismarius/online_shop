# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


customer = Customer.create(email: "test@dotcom.com", phone: 123456)
order = Order.create(customer_id: customer.id, date: Time.now, address: "test")
Order.create(customer_id: customer.id, date: Time.now, address: "next")
Bunch.create(order_id: order.id, color: "red")
Bunch.create(order_id: order.id, color: "green")