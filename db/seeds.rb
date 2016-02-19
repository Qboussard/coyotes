if User.count == 0
	User.create!(email: 'test@test.fr', password: '123456', password_confirmation: "123456", admin: 1, reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:02:10", last_sign_in_at: "2015-02-06 14:02:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1")
		puts '-> Ajoût de l\'utilisateur test@test.fr avec le mot de passe suivant : 123456'
end
if Player.count == 0
	Player.create!(lastname: "Boussard", firstname: "Quentin", number:"08", place: "Attaque", staff: "training", picture: "1")
		puts '-> Ajoût de joueurs'
end
if News.count == 0
	News.create!(title: "Test de titre", summary: "Hello summary test",content: "lorem ipsum")
	News.create!(title: "Test de titre", content: "Quod opera consulta cogitabatur astute, ut hoc insidiarum genere Galli periret avunculus, ne eum ut praepotens acueret in fiduciam exitiosa coeptantem. verum navata est opera diligens hocque dilato Eusebius praepositus cubiculi missus est Cabillona aurum secum perferens, quo per turbulentos seditionum concitores occultius distributo et tumor consenuit militum et salus est in tuto locata praefecti. deinde cibo abunde perlato castra die praedicto sunt mota.")
		puts '-> Ajoût de news'
end
if Tournament.count == 0
	Tournament.create!(place: "Gray", date: "13/12/2015", link_picture: "")
		puts '-> Ajoût d\'un tournois'
end
if Match.count == 0
	Match.create!(tournaments_id: "1",teams_1: "Gray", teams_2: "Vesoul", score: "3 / 3")
		puts '-> Ajoût d\'un match'
end
if Presence.count == 0
	Presence.create!(tournaments_id: "1",name: "Toto")
		puts '-> Ajoût de joueurs dans un tournoi'
end
if Team.count == 0
	Team.create!(city: "Gray")
		puts '-> Ajoût d\'une team'
end
