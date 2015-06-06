# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@categories = Category.create([{name: "Meats"}, {name: "Fish"}, {name: "Sides"}, {name: "Beverages"}, {name: "Specials"}])
@menus = Menu.create([{from_date: Date.today, to_date: Date.today}, {from_date: Date.tomorrow, to_date: Date.tomorrow}])
@roles = Role.create([{name: 'Administrator'}, {name: 'User'}, {name: 'Customer'}])
@items = Item.create([
                         {category_id: 1, name: 'Bar-B-Que Chicken', description: 'alsdabsdljbaljbsljbdailialwilwbbewa inaibsifas aliidlibsdl aslsbdjbs', price: '300'},
                         {category_id: 2, name: 'Red Snapper', description: 'dlanfasbfljsab flajbsldba sljbdalsda ldbsabdl', price: '450'},
                         {category_id: 3, name: 'Rice & Peas', description: 'alnsdl ldasld aldlnasl landsils ss.', price: '0'}
                     ])