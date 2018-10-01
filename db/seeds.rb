# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.find_by(email:"harold@lesraffineurs.com")
(0..10).each do |i|
    Case.create(user_id: user.id, state: "Nouveau #{i}", order: "23456 #{i}", client: "Dominique Bénard #{i}", address: "31 rue de Toulouse #{i}", category: "problème livraison #{i}", subject: "livré mais non reçu #{i}", note: "client contacté, en attente réponse #{i}", ticket: "27645 #{i}", inquiry: "23 456 23 #{i}", tracking: "2L112414141312312")
end