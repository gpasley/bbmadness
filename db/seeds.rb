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
  {name: 'Villanova',                rank: 1,   match_up: 1,  group: 'A'},
  {name: 'Mt St Marys/New Orleans',  rank: 16,  match_up: 1,  group: 'A'},
  {name: 'Wisconsin',                rank: 8,   match_up: 2,  group: 'A'},
  {name: 'Virginia Tech',            rank: 9,   match_up: 2,  group: 'A'},
  {name: 'Virginia',                 rank: 5,   match_up: 3,  group: 'A'},
  {name: 'UNC Wilmington',           rank: 12,  match_up: 3,  group: 'A'},
  {name: 'Florida',                  rank: 4,   match_up: 4,  group: 'A'},
  {name: 'East Tenn St',             rank: 13,  match_up: 4,  group: 'A'},
  {name: 'SMU',                      rank: 6,   match_up: 5,  group: 'A'},
  {name: 'Providence/USC',               rank: 11,  match_up: 5,  group: 'A'},
  {name: 'Baylor',                   rank: 3,   match_up: 6,  group: 'A'},
  {name: 'New Mexico St',            rank: 14,  match_up: 6,  group: 'A'},
  {name: 'South Carolina',           rank: 7,   match_up: 7,  group: 'A'},
  {name: 'Marquette',                rank: 10,  match_up: 7,  group: 'A'},
  {name: 'Duke',                     rank: 2,   match_up: 8,  group: 'A'},
  {name: 'Troy',                     rank: 15,  match_up: 8,  group: 'A'},
  
  {name: 'Gonzaga',                  rank: 1,   match_up: 9,  group: 'A'},
  {name: 'South Dakota St',          rank: 16,  match_up: 9,  group: 'A'},
  {name: 'Northwestern',             rank: 8,   match_up: 10, group: 'A'},
  {name: 'Vanderbilt',               rank: 9,   match_up: 10, group: 'A'},
  {name: 'Notre Dame',               rank: 5,   match_up: 11, group: 'A'},
  {name: 'Princeton',                rank: 12,  match_up: 11, group: 'A'},
  {name: 'West Virginia',            rank: 4,   match_up: 12, group: 'A'},
  {name: 'Bucknell',                 rank: 13,  match_up: 12, group: 'A'},
  {name: 'Maryland',                 rank: 6,   match_up: 13, group: 'A'},
  {name: 'Xavier',                   rank: 11,  match_up: 13, group: 'A'},
  {name: 'Florida St',               rank: 3,   match_up: 14, group: 'A'},
  {name: 'Fla Gulf Coast',           rank: 14,  match_up: 14, group: 'A'},
  {name: 'St Marys',                 rank: 7,   match_up: 15, group: 'A'},
  {name: 'VCU',                      rank: 10,  match_up: 15, group: 'A'},
  {name: 'Arizona',                  rank: 2,   match_up: 16, group: 'A'},
  {name: 'North Dakota',             rank: 15,  match_up: 16, group: 'A'},
  
  {name: 'Kansas',                   rank: 1,   match_up: 1,  group: 'B'},
  {name: 'NC Central/UC Davis',      rank: 16,  match_up: 1,  group: 'B'},
  {name: 'Miami',                    rank: 8,   match_up: 2,  group: 'B'},
  {name: 'Michigan St',              rank: 9,   match_up: 2,  group: 'B'},
  {name: 'Iowa St',                  rank: 5,   match_up: 3,  group: 'B'},
  {name: 'Nevada',                   rank: 12,  match_up: 3,  group: 'B'},
  {name: 'Purdue',                   rank: 4,   match_up: 4,  group: 'B'},
  {name: 'Vermont',                  rank: 13,  match_up: 4,  group: 'B'},
  {name: 'Creighton',                rank: 6,   match_up: 5,  group: 'B'},
  {name: 'Rhode Island',             rank: 11,  match_up: 5,  group: 'B'},
  {name: 'Oregon',                   rank: 3,   match_up: 6,  group: 'B'},
  {name: 'Iona',                     rank: 14,  match_up: 6,  group: 'B'},
  {name: 'Michigan',                 rank: 7,   match_up: 7,  group: 'B'},
  {name: 'Oklahoma St',              rank: 10,  match_up: 7,  group: 'B'},
  {name: 'Louisville',               rank: 2,   match_up: 8,  group: 'B'},
  {name: 'Jacksonville St',          rank: 15,  match_up: 8,  group: 'B'},
  
  {name: 'North Carolina',           rank: 1,   match_up: 9,  group: 'B'},
  {name: 'Texas Southern',           rank: 16,  match_up: 9,  group: 'B'},
  {name: 'Arkansas',                 rank: 8,   match_up: 10, group: 'B'},
  {name: 'Seton Hall',               rank: 9,   match_up: 10, group: 'B'},
  {name: 'Minnesota',                rank: 5,   match_up: 11, group: 'B'},
  {name: 'Middle Tenn',              rank: 12,  match_up: 11, group: 'B'},
  {name: 'Butler',                   rank: 4,   match_up: 12, group: 'B'},
  {name: 'Winthrop',                 rank: 13,  match_up: 12, group: 'B'},
  {name: 'Cincinnati',               rank: 6,   match_up: 13, group: 'B'},
  {name: 'Kansas St/Wake Forest',    rank: 11,  match_up: 13, group: 'B'},
  {name: 'UCLA',                     rank: 3,   match_up: 14, group: 'B'},
  {name: 'Kent St',                  rank: 14,  match_up: 14, group: 'B'},
  {name: 'Dayton',                   rank: 7,   match_up: 15, group: 'B'},
  {name: 'Wichita St',               rank: 10,  match_up: 15, group: 'B'},
  {name: 'Kentucky',                 rank: 2,   match_up: 16, group: 'B'},
  {name: 'Northern Ky',              rank: 15,  match_up: 16, group: 'B'},
    
]
)