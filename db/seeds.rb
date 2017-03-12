# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

teams = Team.create(
[
  {name: 'Duke',  rank: 1,  match_up: 1, group: 'A'},
  {name: 'SCSU',  rank: 2,  match_up: 1, group: 'A'},
  {name: 'Aasdf', rank: 3,  match_up: 2, group: 'A'},
  {name: 'Basdf', rank: 4,  match_up: 2, group: 'A'},
  {name: 'Casdf', rank: 5,  match_up: 3, group: 'A'},
  {name: 'Dasdf', rank: 6,  match_up: 3, group: 'A'},
  {name: 'Easdf', rank: 7,  match_up: 4, group: 'A'},
  {name: 'Fasdf', rank: 8,  match_up: 4, group: 'A'},
  {name: 'Gasdf', rank: 9,  match_up: 5, group: 'A'},
  {name: 'Hasdf', rank: 10, match_up: 5, group: 'A'},
  {name: 'Iasdf', rank: 11, match_up: 6, group: 'A'},
  {name: 'Jasdf', rank: 12, match_up: 6, group: 'A'},
  {name: 'Kasdf', rank: 13, match_up: 7, group: 'A'},
  {name: 'Lasdf', rank: 14, match_up: 7, group: 'A'},
  {name: 'Masdf', rank: 15, match_up: 8, group: 'A'},
  {name: 'Nasdf', rank: 16, match_up: 8, group: 'A'},
  
  {name: 'Duke2',  rank: 1,  match_up: 9, group: 'A'},
  {name: 'SCSU2',  rank: 2,  match_up: 9, group: 'A'},
  {name: 'Aasdf2', rank: 3,  match_up: 10, group: 'A'},
  {name: 'Basdf2', rank: 4,  match_up: 10, group: 'A'},
  {name: 'Casdf2', rank: 5,  match_up: 11, group: 'A'},
  {name: 'Dasdf2', rank: 6,  match_up: 11, group: 'A'},
  {name: 'Easdf2', rank: 7,  match_up: 12, group: 'A'},
  {name: 'Fasdf2', rank: 8,  match_up: 12, group: 'A'},
  {name: 'Gasdf2', rank: 9,  match_up: 13, group: 'A'},
  {name: 'Hasdf2', rank: 10, match_up: 13, group: 'A'},
  {name: 'Iasdf2', rank: 11, match_up: 14, group: 'A'},
  {name: 'Jasdf2', rank: 12, match_up: 14, group: 'A'},
  {name: 'Kasdf2', rank: 13, match_up: 15, group: 'A'},
  {name: 'Lasdf2', rank: 14, match_up: 15, group: 'A'},
  {name: 'Masdf2', rank: 15, match_up: 16, group: 'A'},
  {name: 'Nasdf2', rank: 16, match_up: 16, group: 'A'},
  
  {name: 'Duke3',  rank: 1,  match_up: 1, group: 'B'},
  {name: 'SCSU3',  rank: 2,  match_up: 1, group: 'B'},
  {name: 'Aasdf3', rank: 3,  match_up: 2, group: 'B'},
  {name: 'Basdf3', rank: 4,  match_up: 2, group: 'B'},
  {name: 'Casdf3', rank: 5,  match_up: 3, group: 'B'},
  {name: 'Dasdf3', rank: 6,  match_up: 3, group: 'B'},
  {name: 'Easdf3', rank: 7,  match_up: 4, group: 'B'},
  {name: 'Fasdf3', rank: 8,  match_up: 4, group: 'B'},
  {name: 'Gasdf3', rank: 9,  match_up: 5, group: 'B'},
  {name: 'Hasdf3', rank: 10, match_up: 5, group: 'B'},
  {name: 'Iasdf3', rank: 11, match_up: 6, group: 'B'},
  {name: 'Jasdf3', rank: 12, match_up: 6, group: 'B'},
  {name: 'Kasdf3', rank: 13, match_up: 7, group: 'B'},
  {name: 'Lasdf3', rank: 14, match_up: 7, group: 'B'},
  {name: 'Masdf3', rank: 15, match_up: 8, group: 'B'},
  {name: 'Nasdf3', rank: 16, match_up: 8, group: 'B'},
  
  {name: 'Duke4',  rank: 1,  match_up: 9, group: 'B'},
  {name: 'SCSU4',  rank: 2,  match_up: 9, group: 'B'},
  {name: 'Aasdf21', rank: 3,  match_up: 10, group: 'B'},
  {name: 'Basdf21', rank: 4,  match_up: 10, group: 'B'},
  {name: 'Casdf21', rank: 5,  match_up: 11, group: 'B'},
  {name: 'Dasdf21', rank: 6,  match_up: 11, group: 'B'},
  {name: 'Easdf21', rank: 7,  match_up: 12, group: 'B'},
  {name: 'Fasdf21', rank: 8,  match_up: 12, group: 'B'},
  {name: 'Gasdf21', rank: 9,  match_up: 13, group: 'B'},
  {name: 'Hasdf21', rank: 10, match_up: 13, group: 'B'},
  {name: 'Iasdf21', rank: 11, match_up: 14, group: 'B'},
  {name: 'Jasdf21', rank: 12, match_up: 14, group: 'B'},
  {name: 'Kasdf21', rank: 13, match_up: 15, group: 'B'},
  {name: 'Lasdf21', rank: 14, match_up: 15, group: 'B'},
  {name: 'Masdf21', rank: 15, match_up: 16, group: 'B'},
  {name: 'Nasdf21', rank: 16, match_up: 16, group: 'B'},
    
]
)