# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Team.delete_all

teams = Team.create(
[
  {name: 'Duke',                rank: 1,   match_up: 1,  group: 'A'},
  {name: 'NCCU/N Dakota St',    rank: 16,  match_up: 1,  group: 'A'},
  {name: 'VCU',                 rank: 8,   match_up: 2,  group: 'A'},
  {name: 'UCF',                 rank: 9,   match_up: 2,  group: 'A'},
  {name: 'Miss St',             rank: 5,   match_up: 3,  group: 'A'},
  {name: 'Liberty',             rank: 12,  match_up: 3,  group: 'A'},
  {name: 'VA Tech',             rank: 4,   match_up: 4,  group: 'A'},
  {name: 'St Louis',            rank: 13,  match_up: 4,  group: 'A'},
  {name: 'Maryland',            rank: 6,   match_up: 5,  group: 'A'},
  {name: 'Belmont/Temple',      rank: 11,  match_up: 5,  group: 'A'},
  {name: 'LSU',                 rank: 3,   match_up: 6,  group: 'A'},
  {name: 'Yale',                rank: 14,  match_up: 6,  group: 'A'},
  {name: 'Louisville',          rank: 7,   match_up: 7,  group: 'A'},
  {name: 'Minnesota',           rank: 10,  match_up: 7,  group: 'A'},
  {name: 'Michigan St',         rank: 2,   match_up: 8,  group: 'A'},
  {name: 'Bradley',             rank: 15,  match_up: 8,  group: 'A'},

  {name: 'Gonzaga',             rank: 1,   match_up: 9,  group: 'A'},
  {name: 'FDU/PVIEW ',          rank: 16,  match_up: 9,  group: 'A'},
  {name: 'Syracuse',            rank: 8,   match_up: 10, group: 'A'},
  {name: 'Baylor',              rank: 9,   match_up: 10, group: 'A'},
  {name: 'Marquette',           rank: 5,   match_up: 11, group: 'A'},
  {name: 'Murray St',           rank: 12,  match_up: 11, group: 'A'},
  {name: 'Florida St',          rank: 4,   match_up: 12, group: 'A'},
  {name: 'Vermont',             rank: 13,  match_up: 12, group: 'A'},
  {name: 'Buffalo',             rank: 6,   match_up: 13, group: 'A'},
  {name: 'Arizona St/St Johns', rank: 11,  match_up: 13, group: 'A'},
  {name: 'Texas Tech',          rank: 3,   match_up: 14, group: 'A'},
  {name: 'N Kentucky',          rank: 14,  match_up: 14, group: 'A'},
  {name: 'Nevada',              rank: 7,   match_up: 15, group: 'A'},
  {name: 'Florida',             rank: 10,  match_up: 15, group: 'A'},
  {name: 'Michigan',            rank: 2,   match_up: 16, group: 'A'},
  {name: 'Montana',             rank: 15,  match_up: 16, group: 'A'},

  {name: 'Virgina',             rank: 1,   match_up: 1,  group: 'B'},
  {name: 'Gardner Webb',        rank: 16,  match_up: 1,  group: 'B'},
  {name: 'Ole Miss',            rank: 8,   match_up: 2,  group: 'B'},
  {name: 'Oklahoma',            rank: 9,   match_up: 2,  group: 'B'},
  {name: 'Wisconsin',           rank: 5,   match_up: 3,  group: 'B'},
  {name: 'Oregon',              rank: 12,  match_up: 3,  group: 'B'},
  {name: 'Kansas St',           rank: 4,   match_up: 4,  group: 'B'},
  {name: 'UC Irvine',           rank: 13,  match_up: 4,  group: 'B'},
  {name: 'Villanova',           rank: 6,   match_up: 5,  group: 'B'},
  {name: 'Saint Marys',         rank: 11,  match_up: 5,  group: 'B'},
  {name: 'Purdue',              rank: 3,   match_up: 6,  group: 'B'},
  {name: 'Old Dominion',        rank: 14,  match_up: 6,  group: 'B'},
  {name: 'Cincinnati',          rank: 7,   match_up: 7,  group: 'B'},
  {name: 'Iowa',                rank: 10,  match_up: 7,  group: 'B'},
  {name: 'Tennessee',           rank: 2,   match_up: 8,  group: 'B'},
  {name: 'Colgate',             rank: 15,  match_up: 8,  group: 'B'},

  {name: 'UNC',                 rank: 1,   match_up: 9,  group: 'B'},
  {name: 'Iona',                rank: 16,  match_up: 9,  group: 'B'},
  {name: 'Utah St',             rank: 8,   match_up: 10, group: 'B'},
  {name: 'Washington',          rank: 9,   match_up: 10, group: 'B'},
  {name: 'Auburn',              rank: 5,   match_up: 11, group: 'B'},
  {name: 'New Mexico St',       rank: 12,  match_up: 11, group: 'B'},
  {name: 'Kansas',              rank: 4,   match_up: 12, group: 'B'},
  {name: 'Northeastern',        rank: 13,  match_up: 12, group: 'B'},
  {name: 'Iowa St',             rank: 6,   match_up: 13, group: 'B'},
  {name: 'Ohio St',             rank: 11,  match_up: 13, group: 'B'},
  {name: 'Houston',             rank: 3,   match_up: 14, group: 'B'},
  {name: 'Georgia St'  ,        rank: 14,  match_up: 14, group: 'B'},
  {name: 'Wofford',             rank: 7,   match_up: 15, group: 'B'},
  {name: 'Seton Hall',          rank: 10,  match_up: 15, group: 'B'},
  {name: 'Kentucky',            rank: 2,   match_up: 16, group: 'B'},
  {name: 'Abilene Chr',         rank: 15,  match_up: 16, group: 'B'},

]
)

puts "Bracket teams updated"

puts "Deleting sheets"
Sheet.delete_all
puts "Sheets deleted"

puts "Deleting users"
users = User.where(is_admin: false)
users.delete_all
puts "Users deleted"

puts "Creating Master Sheet"
admin = User.where(is_admin: true).first
Sheet.create(user_id: admin.id, name: 'Master Sheet', is_master: true)
puts "Master sheet created"