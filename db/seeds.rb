 # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Room.destroy_all
Card.destroy_all

User.create! ([
  {
    username: "klaudia",
    email: 'kl@udia.com',
    password: "password",
    password_confirmation: "password"
  },
  {
    username: "alice",
    email: 'alice@wonderland.com',
    password: "wonderland",
    password_confirmation: "wonderland"
  },
  {
    username: "morgan",
    email: 'morgan@morgan.com',
    password: "testing",
    password_confirmation: "testing"
  },
  {
    username: "Kanye",
    email: 'kanye@west.com',
    password: "kim",
    password_confirmation: "kim"
  }
  ])

Room.create! ([
  {
    title: "Room one"
  }, {
    title: ":Insert Morgan joke here:"
  }, {
    title: "Flags for emojis make no sense"
  }, {
    title: "Whatever"
  }
  ])
