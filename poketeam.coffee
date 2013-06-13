types = []
pokemon = []
$.ajax
  async: false
  url: "/poketeam/js/app/pokemon_db.json"
  dataType: "json"
  success: (data)->
    types = data["types"]

$.ajax
  async: false
  url: "/poketeam/js/app/pokemon.json"
  dataType: "json"
  success: (data)->
    pokemon = data["pokemon"]
console.log pokemon

$ ->
  pokemon_list = pokemon
  $("#autocomplete").autocomplete source: pokemon
