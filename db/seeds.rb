if User.count == 0
	User.create!(email: 'test@test.fr', password: '123456', password_confirmation: "123456", admin: 1, reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:02:10", last_sign_in_at: "2015-02-06 14:02:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1")
		puts '-> Ajoût de l\'utilisateur test@test.fr avec le mot de passe suivant : 123456'
end
if Player.count == 0
	Player.create!(lastname: "Boussard", firstname: "Quentin", number:"08", place: "Attaque", staff: "training", picture: "1")
		puts '-> Ajoût de joueurs'
end
if News.count == 0
	News.create!(title: "Entrainements des Coyotes !",summary: "Voici l'organisation des séances d'entrainement :", content: "Salut &agrave; tous !<br /><br />Voici l'organisation des s&eacute;ances d'entrainement :<br />- Mardi de 20h 30 &agrave; 22h : Initiation roller pour les jeunes et roller hockey pour les adultes.<br /> - Vendredi de 20h 30 &agrave; 21h30 : initiation roller hockey pour les jeunes (encadrement des adultes).<br /> - Vendredi a partir de 21h30 : entra&icirc;nement roller hockey pour les adultes UNIQUEMENT.<br /> - Samedi de 17h &agrave; 20h : entra&icirc;nements roller hockey pour les adultes et jeunes.<br /> <br /> * Pour int&eacute;grer les entra&icirc;nements ""adultes"" un niveau de base en roller et maniement sera &agrave; valider.<br /> <br /> * A partir de mardi 16 f&eacute;vrier et pour tous les entra&icirc;nements &agrave; venir : APPORTEZ UNE PAIRE DE BASKETS ET JOGGING POUR L ENTRA&Icirc;NEMENT !")
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
