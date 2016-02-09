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
	Player.create!(lastname: "Boussard", firstname: "Quentin", number:"08", place: "Attaque", staff: "training", picture: "1")
	Player.create!(lastname: "Tata", firstname: "blob", number:"91", place: "Defence", adult:"false")
	Player.create!(lastname: "Toto", firstname: "plop", number:"42", place: "Gardient")
		puts '-> Ajoût de joueurs'
end
if News.count == 0
	News.create!(title: "Test de titre", summary: "Hello summary test",content: "lorem ipsum")
	News.create!(title: "Test de titre", content: "Quod opera consulta cogitabatur astute, ut hoc insidiarum genere Galli periret avunculus, ne eum ut praepotens acueret in fiduciam exitiosa coeptantem. verum navata est opera diligens hocque dilato Eusebius praepositus cubiculi missus est Cabillona aurum secum perferens, quo per turbulentos seditionum concitores occultius distributo et tumor consenuit militum et salus est in tuto locata praefecti. deinde cibo abunde perlato castra die praedicto sunt mota.")
		puts '-> Ajoût d\'une news'
		puts '----------------------------------------------------------------------------'
end
if Tournament.count == 0
	Tournament.create!(place: "Gray", date: "14/03/2010", link_picture: "")
	Tournament.create!(place: "Gray", date: "05/06/2011", link_picture: "")
	Tournament.create!(place: "Gray", date: "13/05/2012", link_picture: "")
	Tournament.create!(place: "Gray", date: "18/11/2012", link_picture: "")
	Tournament.create!(place: "Gray", date: "03/03/2013", link_picture: "")
	Tournament.create!(place: "Gray", date: "28/04/2013", link_picture: "")
	Tournament.create!(place: "Dôle", date: "12/05/2013", link_picture: "")
	Tournament.create!(place: "Gray", date: "13/10/2013", link_picture: "")
	Tournament.create!(place: "Gray", date: "15/12/2013", link_picture: "")
	Tournament.create!(place: "Gray", date: "16/02/2014", link_picture: "")
	Tournament.create!(place: "Gray", date: "14/04/2014", link_picture: "")
	Tournament.create!(place: "Gray", date: "12/10/2014", link_picture: "")
	Tournament.create!(place: "Gray", date: "15/02/2015", link_picture: "")
	Tournament.create!(place: "Gray", date: "11/10/2015", link_picture: "")
	Tournament.create!(place: "Gray", date: "22/11/2015", link_picture: "")
	Tournament.create!(place: "Gray", date: "13/12/2015", link_picture: "")


		puts '-> Ajoût d\'un tournois'
end
if Match.count == 0
	Match.create!(tournaments_id: "1",teams_1: "Gray", teams_2: "Vesoul", score: "3 / 3")
	Match.create!(tournaments_id: "1",teams_1: "Gray", teams_2: "Bar Le Duc", score: "3 / 8")
	Match.create!(tournaments_id: "1",teams_1: "Vesoul", teams_2: "Bar Le Duc", score: "2 / 0")

	Match.create!(tournaments_id: "2",teams_1: "Vesoul", teams_2: "Bar Le Duc", score: "3 / 3")
	Match.create!(tournaments_id: "2",teams_1: "Pontarlier", teams_2: "Dijon", score: "2 / 3")
	Match.create!(tournaments_id: "2",teams_1: "Gray", teams_2: "Bar Le Duc", score: "0 / 2")
	Match.create!(tournaments_id: "2",teams_1: "Vesoul", teams_2: "Dijon", score: "2 / 6")
	Match.create!(tournaments_id: "2",teams_1: "Vesoul", teams_2: "Pontarlier", score: "2 / 2")
	Match.create!(tournaments_id: "2",teams_1: "Dijon", teams_2: "Bar Le Duc", score: "2 / 6")
	Match.create!(tournaments_id: "2",teams_1: "Gray", teams_2: "Pontarlier", score: "1 / 6")
	Match.create!(tournaments_id: "2",teams_1: "Vesoul", teams_2: "Gray", score: "3 / 1")
	Match.create!(tournaments_id: "2",teams_1: "Gray", teams_2: "Dijon", score: "4 / 4")

		puts '-> Ajoût d\'un match'
end
if Presence.count == 0
	Presence.create!(tournaments_id: "1",name: "Toto")
	Presence.create!(tournaments_id: "1",name: "Tata")
	Presence.create!(tournaments_id: "1",name: "Titi")
	Presence.create!(tournaments_id: "1",name: "Tutu")
		puts '-> Ajoût d\'un joueur dans un tournois'
end
if Team.count == 0
	Team.create!(city: "Gray")
	Team.create!(city: "Besac")
	Team.create!(city: "Dijon")
		puts '-> Ajoût d\'une team'
end
