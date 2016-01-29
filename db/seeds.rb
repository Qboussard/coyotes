# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
if User.count == 0
	User.create!(email: 'test@test.fr', password: '123456', password_confirmation: "123456", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:02:10", last_sign_in_at: "2015-02-06 14:02:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1")
			puts '-> Ajoût de l\'utilisateur test@test.fr avec le mot de passe suivant : 123456'
end

if Player.count == 0
	Player.create!(lastname: "Boussard", firstname: "Quentin", number:"08", place: "Attaque", staff: "training")
	Player.create!(lastname: "Tata", firstname: "blob", number:"91", place: "Defence", adult:"false")
	Player.create!(lastname: "Toto", firstname: "plop", number:"42", place: "Gardient")
		puts '-> Ajoût d\'un joueur'
end
if News.count == 0
	News.create!(title: "Test de titre", content: "lorem ipsum")
	News.create!(title: "Test de titre", content: "Quod opera consulta cogitabatur astute, ut hoc insidiarum genere Galli periret avunculus, ne eum ut praepotens acueret in fiduciam exitiosa coeptantem. verum navata est opera diligens hocque dilato Eusebius praepositus cubiculi missus est Cabillona aurum secum perferens, quo per turbulentos seditionum concitores occultius distributo et tumor consenuit militum et salus est in tuto locata praefecti. deinde cibo abunde perlato castra die praedicto sunt mota.")
		puts '-> Ajoût d\'une news'
end
