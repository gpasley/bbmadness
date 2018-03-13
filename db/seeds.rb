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
  {name: 'Virgina',         rank: 1,   match_up: 1,  group: 'A'},
  {name: 'UMBC',            rank: 16,  match_up: 1,  group: 'A'},
  {name: 'Creighton',       rank: 8,   match_up: 2,  group: 'A'},
  {name: 'Kansas St',       rank: 9,   match_up: 2,  group: 'A'},
  {name: 'Kentucky',        rank: 5,   match_up: 3,  group: 'A'},
  {name: 'Davidson',        rank: 12,  match_up: 3,  group: 'A'},
  {name: 'Arizona',         rank: 4,   match_up: 4,  group: 'A'},
  {name: 'Buffalo',         rank: 13,  match_up: 4,  group: 'A'},
  {name: 'Miami',           rank: 6,   match_up: 5,  group: 'A'},
  {name: 'Loyola-Chicago',  rank: 11,  match_up: 5,  group: 'A'},
  {name: 'Tennessee',       rank: 3,   match_up: 6,  group: 'A'},
  {name: 'Wright St',       rank: 14,  match_up: 6,  group: 'A'},
  {name: 'Nevada',          rank: 7,   match_up: 7,  group: 'A'},
  {name: 'Texas',           rank: 10,  match_up: 7,  group: 'A'},
  {name: 'Cincinnati',      rank: 2,   match_up: 8,  group: 'A'},
  {name: 'Georgia St',      rank: 15,  match_up: 8,  group: 'A'},
  
  {name: 'Xavier',          rank: 1,   match_up: 9,  group: 'A'},
  {name: 'NCCU/TXSO',       rank: 16,  match_up: 9,  group: 'A'},
  {name: 'Missouri',        rank: 8,   match_up: 10, group: 'A'},
  {name: 'Florida St',      rank: 9,   match_up: 10, group: 'A'},
  {name: 'Ohio St',         rank: 5,   match_up: 11, group: 'A'},
  {name: 'S Dakota St',     rank: 12,  match_up: 11, group: 'A'},
  {name: 'Gonzaga',         rank: 4,   match_up: 12, group: 'A'},
  {name: 'UNCG',            rank: 13,  match_up: 12, group: 'A'},
  {name: 'Houston',         rank: 6,   match_up: 13, group: 'A'},
  {name: 'San Diego St',    rank: 11,  match_up: 13, group: 'A'},
  {name: 'Michigan',        rank: 3,   match_up: 14, group: 'A'},
  {name: 'Montana',         rank: 14,  match_up: 14, group: 'A'},
  {name: 'Texas A&M',       rank: 7,   match_up: 15, group: 'A'},
  {name: 'Providence',      rank: 10,  match_up: 15, group: 'A'},
  {name: 'North Carolina',  rank: 2,   match_up: 16, group: 'A'},
  {name: 'Lipscomb',        rank: 15,  match_up: 16, group: 'A'},
  
  {name: 'Villanova',       rank: 1,   match_up: 1,  group: 'B'},
  {name: 'LIU/Radford',     rank: 16,  match_up: 1,  group: 'B'},
  {name: 'Va Tech',         rank: 8,   match_up: 2,  group: 'B'},
  {name: 'Alabama',         rank: 9,   match_up: 2,  group: 'B'},
  {name: 'West Virgina',    rank: 5,   match_up: 3,  group: 'B'},
  {name: 'Murray St',       rank: 12,  match_up: 3,  group: 'B'},
  {name: 'Wichita St',      rank: 4,   match_up: 4,  group: 'B'},
  {name: 'Marshall',        rank: 13,  match_up: 4,  group: 'B'},
  {name: 'Florida',         rank: 6,   match_up: 5,  group: 'B'},
  {name: 'STBON/UCLA',      rank: 11,  match_up: 5,  group: 'B'},
  {name: 'Texas Tech',      rank: 3,   match_up: 6,  group: 'B'},
  {name: 'SF Austin',       rank: 14,  match_up: 6,  group: 'B'},
  {name: 'Arkansas',        rank: 7,   match_up: 7,  group: 'B'},
  {name: 'Butler',          rank: 10,  match_up: 7,  group: 'B'},
  {name: 'Purdue',          rank: 2,   match_up: 8,  group: 'B'},
  {name: 'CS Fullerton',    rank: 15,  match_up: 8,  group: 'B'},
  
  {name: 'Kansas',          rank: 1,   match_up: 9,  group: 'B'},
  {name: 'Penn',            rank: 16,  match_up: 9,  group: 'B'},
  {name: 'Seton Hall',      rank: 8,   match_up: 10, group: 'B'},
  {name: 'NC State',        rank: 9,   match_up: 10, group: 'B'},
  {name: 'Clemson',         rank: 5,   match_up: 11, group: 'B'},
  {name: 'New Mexico St',   rank: 12,  match_up: 11, group: 'B'},
  {name: 'Auburn',          rank: 4,   match_up: 12, group: 'B'},
  {name: 'Charleston',      rank: 13,  match_up: 12, group: 'B'},
  {name: 'TCU',             rank: 6,   match_up: 13, group: 'B'},
  {name: 'ASU/SYR',         rank: 11,  match_up: 13, group: 'B'},
  {name: 'Michigan St',     rank: 3,   match_up: 14, group: 'B'},
  {name: 'Bucknell',        rank: 14,  match_up: 14, group: 'B'},
  {name: 'Rhode Island',    rank: 7,   match_up: 15, group: 'B'},
  {name: 'Oklahoma',        rank: 10,  match_up: 15, group: 'B'},
  {name: 'Duke',            rank: 2,   match_up: 16, group: 'B'},
  {name: 'Iona',            rank: 15,  match_up: 16, group: 'B'},
    
]
)

puts "Bracket teams updated"