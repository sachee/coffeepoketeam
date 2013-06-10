require ['fs']
alert 'happy'


data = fs.readfile('./pokemon_db.json')
json_data = JSON.parse data

alert 'happy2'
console.log json_data