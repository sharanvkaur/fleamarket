# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.create!([
  {name: "Borderlands", email: "borderlands@gmail.com", password: "password", password_confirmation: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:02:10", last_sign_in_at: "2015-02-06 14:02:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {name: "Salvador", email: "salvador@gmail.com", password: "password", password_confirmation: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:02:10", last_sign_in_at: "2015-02-06 14:02:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {name: "Dr Zed", email: "zed@gmail.com", password: "password", password_confirmation: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:02:10", last_sign_in_at: "2015-02-06 14:02:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {name: "Ellie", email: "ellie@gmail.com", password: "password", password_confirmation: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:02:10", last_sign_in_at: "2015-02-06 14:02:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {name: "Marcus", email: "marcus@gmail.com", password: "password", password_confirmation: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:02:10", last_sign_in_at: "2015-02-06 14:02:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])


Event.create([
  {name: "Public Garden", location: "Singapore", date: "2017-04-05", target: 20, created_at:  "2016-02-06 14:02:10", updated_at:  "2016-02-06 14:02:10", user_id: 2, description: "blah", one_liner: "#", other_sellers: true},
  {name: "Private Garden", location: "Singapore", date: "2017-03-05", target: 120, created_at:  "2016-02-06 14:02:10", updated_at:  "2016-02-06 14:02:10", user_id: 3, description: "blah", one_liner: "#", other_sellers: true},
  {name: "Secret Garden", location: "Singapore", date: "2017-03-15", target: 12, created_at:  "2016-02-06 14:02:10", updated_at:  "2016-02-06 14:02:10", user_id: 4, description: "blah", one_liner: "#", other_sellers: true}
])

Attendance.create([
  {event_id: 2, user_id: 3, created_at: "2016-02-06 14:02:10", updated_at: "2016-02-06 14:02:10"},
  {event_id: 2, user_id: 3, created_at: "2016-02-06 14:02:10", updated_at: "2016-02-06 14:02:10"},
  {event_id: 2, user_id: 3, created_at: "2016-02-06 14:02:10", updated_at: "2016-02-06 14:02:10"},
  {event_id: 2, user_id: 3, created_at: "2016-02-06 14:02:10", updated_at: "2016-02-06 14:02:10"},
  {event_id: 2, user_id: 3, created_at: "2016-02-06 14:02:10", updated_at: "2016-02-06 14:02:10"},
  {event_id: 2, user_id: 3, created_at: "2016-02-06 14:02:10", updated_at: "2016-02-06 14:02:10"},
  {event_id: 2, user_id: 3, created_at: "2016-02-06 14:02:10", updated_at: "2016-02-06 14:02:10"},
  {event_id: 2, user_id: 3, created_at: "2016-02-06 14:02:10", updated_at: "2016-02-06 14:02:10"},
  {event_id: 2, user_id: 3, created_at: "2016-02-06 14:02:10", updated_at: "2016-02-06 14:02:10"},
  {event_id: 2, user_id: 3, created_at: "2016-02-06 14:02:10", updated_at: "2016-02-06 14:02:10"},
  {event_id: 2, user_id: 3, created_at: "2016-02-06 14:02:10", updated_at: "2016-02-06 14:02:10"},
  {event_id: 2, user_id: 3, created_at: "2016-02-06 14:02:10", updated_at: "2016-02-06 14:02:10"},
  {event_id: 2, user_id: 3, created_at: "2016-02-06 14:02:10", updated_at: "2016-02-06 14:02:10"},
  {event_id: 2, user_id: 3, created_at: "2016-02-06 14:02:10", updated_at: "2016-02-06 14:02:10"},
  {event_id: 2, user_id: 3, created_at: "2016-02-06 14:02:10", updated_at: "2016-02-06 14:02:10"},
  {event_id: 2, user_id: 3, created_at: "2016-02-06 14:02:10", updated_at: "2016-02-06 14:02:10"},
  {event_id: 2, user_id: 3, created_at: "2016-02-06 14:02:10", updated_at: "2016-02-06 14:02:10"},
  {event_id: 3, user_id: 3, created_at: "2016-02-06 14:02:10", updated_at: "2016-02-06 14:02:10"},
  {event_id: 3, user_id: 3, created_at: "2016-02-06 14:02:10", updated_at: "2016-02-06 14:02:10"},
  {event_id: 3, user_id: 3, created_at: "2016-02-06 14:02:10", updated_at: "2016-02-06 14:02:10"},
  {event_id: 3, user_id: 3, created_at: "2016-02-06 14:02:10", updated_at: "2016-02-06 14:02:10"}
])

Item.create([
  {name: "Water for Elephants", category: "Book", price: 12, condition: "New", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", stock: 1, photo: "n67py4lyuvzqicre7tl8", user_id: 4, created_at: "2016-02-06 14:02:10", updated_at: "2016-02-06 14:02:10"},
  {name: "Ender's Game", category: "Book", price: 8, condition: "New", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", stock: 1, photo: "n67py4lyuvzqicre7tl8", user_id: 3, created_at: "2016-02-06 14:02:10", updated_at: "2016-02-06 14:02:10"},
  {name: "Xenocide", category: "Book", price: 1, condition: "New", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", stock: 1, photo: "n67py4lyuvzqicre7tl8", user_id: 5, created_at: "2016-02-06 14:02:10", updated_at: "2016-02-06 14:02:10"},
  {name: "Speaker for the Dead", category: "Book", price: 16, condition: "New", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", stock: 1, photo: "n67py4lyuvzqicre7tl8", user_id: 6, created_at: "2016-02-06 14:02:10", updated_at: "2016-02-06 14:02:10"},
  {name: "Children of the Mind", category: "Book", price: 17, condition: "New", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", stock: 1, photo: "n67py4lyuvzqicre7tl8", user_id: 1, created_at: "2016-02-06 14:02:10", updated_at: "2016-02-06 14:02:10"},
  {name: "Earth Afire", category: "Book", price: 12, condition: "New", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", stock: 1, photo: "n67py4lyuvzqicre7tl8", user_id: 2, created_at: "2016-02-06 14:02:10", updated_at: "2016-02-06 14:02:10"},
  {name: "Earth Awakens", category: "Book", price: 13, condition: "New", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", stock: 1, photo: "n67py4lyuvzqicre7tl8", user_id: 3, created_at: "2016-02-06 14:02:10", updated_at: "2016-02-06 14:02:10"},
  {name: "Earth Unaware", category: "Book", price: 12, condition: "New", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", stock: 1, photo: "n67py4lyuvzqicre7tl8", user_id: 4, created_at: "2016-02-06 14:02:10", updated_at: "2016-02-06 14:02:10"},
  {name: "Ender's Shadow", category: "Book", price: 15, condition: "New", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", stock: 1, photo: "n67py4lyuvzqicre7tl8", user_id: 6, created_at: "2016-02-06 14:02:10", updated_at: "2016-02-06 14:02:10"},
  {name: "Shadow of the Giant", category: "Book", price: 11, condition: "New", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", stock: 1, photo: "n67py4lyuvzqicre7tl8", user_id: 7, created_at: "2016-02-06 14:02:10", updated_at: "2016-02-06 14:02:10"},
  ])
