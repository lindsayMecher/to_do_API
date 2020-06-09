# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

ToDo.destroy_all

user = User.create(first_name: "Lindsay", last_name: "Mecher", email: "me@me.com", password: "yolo")

todo = ToDo.create(title: "blah", body: "body", importance: "low", user_id: user.id)

todo1 = ToDo.create(title: "Hello", body: "I'm a message", importance: "high", user_id: user.id)

todo2 = ToDo.create(title: "Hello", body: "I'm a message", importance: "high", user_id: user.id)

todo3 = ToDo.create(title: "Hello", body: "I'm a message", importance: "high", user_id: user.id)

todo4 = ToDo.create(title: "Hello", body: "I'm a message", importance: "high", user_id: user.id)

todo5 = ToDo.create(title: "Hello", body: "I'm a message", importance: "high", user_id: user.id)

todo6 = ToDo.create(title: "Hello", body: "I'm a message", importance: "high", user_id: user.id)

todo7 = ToDo.create(title: "Hello", body: "I'm a message", importance: "high", user_id: user.id)
todo8 = ToDo.create(title: "Hello", body: "I'm a message", importance: "high", user_id: user.id)
todo14 = ToDo.create(title: "Hello", body: "I'm a message", importance: "high", user_id: user.id)
todo9 = ToDo.create(title: "Hello", body: "I'm a message", importance: "high", user_id: user.id)
todo10 = ToDo.create(title: "Hello", body: "I'm a message", importance: "high", user_id: user.id)
todo11 = ToDo.create(title: "Hello", body: "I'm a message", importance: "high", user_id: user.id)
todo12 = ToDo.create(title: "Hello", body: "I'm a message", importance: "high", user_id: user.id)
todo13 = ToDo.create(title: "Hello", body: "I'm a message", importance: "high", user_id: user.id)
