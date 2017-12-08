
user = User.new(email: "mestre@mestre.com", password: "1234567", password_confirmation: "1234567", admin: 1)
user.skip_confirmation!
user.save!
user = User.new(email: "christophe@poirier.com", password: "1234567", password_confirmation: "1234567", admin: 2)
user.skip_confirmation!
user.save!
user = User.new(email: "gcc.mayenne@gmail.com", password: "1234567", password_confirmation: "1234567", admin: 3)
user.skip_confirmation!
user.save!
user = User.new(email: "marcelo@brandao.com", password: "1234567", password_confirmation: "1234567", admin: 2)
user.skip_confirmation!
user.save!
user = User.new(email: "gcc.evron@gmail.com", password: "1234567", password_confirmation: "1234567", admin: 3)
user.skip_confirmation!
user.save!
user = User.new(email: "gcc.laval@gmail.com", password: "1234567", password_confirmation: "1234567", admin: 3)
user.skip_confirmation!
user.save!
user = User.new(email: "a@a.com", password: "1234567", password_confirmation: "1234567", admin: 0)
user.skip_confirmation!
user.save!
user = User.new(email: "caroline@berteau.com", password: "1234567", password_confirmation: "1234567", admin: 2)
user.skip_confirmation!
user.save!
user = User.new(email: "gcc.vitre@gmail.com", password: "1234567", password_confirmation: "1234567", admin: 3)
user.skip_confirmation!
user.save!
user = User.new(email: "gael.le_dem@orange.fr", password: "1234567", password_confirmation: "1234567", admin: 0)
user.skip_confirmation!
user.save!
user = User.new(email: "gcc.avaloirs@gmail.com", password: "1234567", password_confirmation: "1234567", admin: 3)
user.skip_confirmation!
user.save!
user = User.new(email: "rebulard@orange.fr", password: "1234567", password_confirmation: "1234567", admin: 0)
user.skip_confirmation!
user.save!
user = User.new(email: "daniel.hamelin0307@orange.fr", password: "1234567", password_confirmation: "1234567", admin: 0)
user.skip_confirmation!
user.save!
user = User.new(email: "clograndin@yahoo.fr", password: "1234567", password_confirmation: "1234567", admin: 0)
user.skip_confirmation!
user.save!
user = User.new(email: "timoutimou@gmail.com", password: "1234567", password_confirmation: "1234567", admin: 0)
user.skip_confirmation!
user.save!
user = User.new(email: "cindy.chauviere@sfr.fr", password: "1234567", password_confirmation: "1234567", admin: 0)
user.skip_confirmation!
user.save!
user = User.new(email: "sebastien.patault@orange.fr", password: "1234567", password_confirmation: "1234567", admin: 0)
user.skip_confirmation!
user.save!
user = User.new(email: "virg.gonnet@yahoo.fr", password: "1234567", password_confirmation: "1234567", admin: 0)
user.skip_confirmation!
user.save!
user = User.new(email: "pottierpascal@live.fr", password: "1234567", password_confirmation: "1234567", admin: 0)
user.skip_confirmation!
user.save!
user = User.new(email: "frederic.reubrecht@gmail.com", password: "1234567", password_confirmation: "1234567", admin: 0)
user.skip_confirmation!
user.save!
user = User.new(email: "mabreb@wanadoo.fr", password: "1234567", password_confirmation: "1234567", admin: 0)
user.skip_confirmation!
user.save!
user = User.new(email: "guillaume@grupoculturacapoeira.com", password: "1234567", password_confirmation: "1234567", admin: 0)
user.skip_confirmation!
user.save!
user = User.new(email: "eugenie03@hotmail.fr", password: "1234567", password_confirmation: "1234567", admin: 0)
user.skip_confirmation!
user.save!
user = User.new(email: "jardin.angelique@orange.fr", password: "1234567", password_confirmation: "1234567", admin: 0)
user.skip_confirmation!
user.save!
user = User.new(email: "clemence.doison@yahoo.fr", password: "1234567", password_confirmation: "1234567", admin: 0)
user.skip_confirmation!
user.save!
user = User.new(email: "djemadogore@gmail.com", password: "1234567", password_confirmation: "1234567", admin: 0)
user.skip_confirmation!
user.save!
user = User.new(email: "chartmannt@hotmail.com", password: "1234567", password_confirmation: "1234567", admin: 0)
user.skip_confirmation!
user.save!
user = User.new(email: "c.aubisse@laposte.net", password: "1234567", password_confirmation: "1234567", admin: 0)
user.skip_confirmation!
user.save!
user = User.new(email: "antonnerir@live.com", password: "1234567", password_confirmation: "1234567", admin: 0)
user.skip_confirmation!
user.save!

Batigrado.create!([
  {titre: "22 Batigrado GRUPO CULTURA CAPOEIRA", description: "", date_bat: "2018-05-05", adresse: "Route de Tours", cp: "53000", ville: "Laval", tarif1: 50.0, tarif2: 20.0, tarif_ext: 50.0, tar_rep1: 6.0, tar_rep2: nil, tar_rep3: 6.0, tar_soiree: 8.0, adr_soiree: "Palindrome", heur_soiree: "2017-11-29 20:00:00"}
])
ComBatigrado.create!([
  {nom: "Koala", prenom: "Jean", nom_grupo: "Grupo Cultura Capoeira", email: "a@a.com", ttshirt: "M", tpant: "M", bati1: true, bati2: true, gradup: false, repas1: false, repas2: nil, repas3: false, soiree: true, montant: 70.0, reglt: nil, batigrado_id: 1, elefe_id: 1}
])
Commande.create!([
  {description: "Affiliation Koala Jean", montant: 190.0, user_id: 7, com_batigrado_id: nil, ticket_repa_id: nil, sold: true, elefe_id: 1, paiement_id: 1},
  {description: "22 Batigrado GRUPO CULTURA CAPOEIRA", montant: 70.0, user_id: 7, com_batigrado_id: 1, ticket_repa_id: nil, sold: false, elefe_id: nil, paiement_id: nil},
  {description: "Repas du Grupo Cultura Capoeira", montant: 46.0, user_id: 7, com_batigrado_id: nil, ticket_repa_id: 1, sold: false, elefe_id: nil, paiement_id: nil},
  {description: "Affiliation Koala Sophie", montant: 190.0, user_id: 7, com_batigrado_id: nil, ticket_repa_id: nil, sold: false, elefe_id: nil, paiement_id: nil},
  {description: "Affiliation Le Dem Gaël", montant: 190.0, user_id: 10, com_batigrado_id: nil, ticket_repa_id: nil, sold: true, elefe_id: 2, paiement_id: 2},
  {description: "Affiliation Rébulard Lucas", montant: nil, user_id: 12, com_batigrado_id: nil, ticket_repa_id: nil, sold: true, elefe_id: nil, paiement_id: 3},
  {description: "Affiliation Rébulard Lucas", montant: 140.0, user_id: 12, com_batigrado_id: nil, ticket_repa_id: nil, sold: true, elefe_id: 3, paiement_id: 3},
  {description: "Affiliation Hamelin Zoé", montant: 140.0, user_id: 13, com_batigrado_id: nil, ticket_repa_id: nil, sold: true, elefe_id: 4, paiement_id: 4},
  {description: "Affiliation Foulon Olivia", montant: 0.0, user_id: 14, com_batigrado_id: nil, ticket_repa_id: nil, sold: false, elefe_id: 5, paiement_id: nil},
  {description: "Affiliation Billon Célia", montant: 0.0, user_id: 16, com_batigrado_id: nil, ticket_repa_id: nil, sold: false, elefe_id: 6, paiement_id: nil},
  {description: "Affiliation Patault Maïlys", montant: 140.0, user_id: 17, com_batigrado_id: nil, ticket_repa_id: nil, sold: true, elefe_id: 7, paiement_id: 5},
  {description: "Affiliation Camara Yoni", montant: 0.0, user_id: 18, com_batigrado_id: nil, ticket_repa_id: nil, sold: false, elefe_id: 8, paiement_id: nil},
  {description: "Affiliation Pottier Pascal", montant: 0.0, user_id: 19, com_batigrado_id: nil, ticket_repa_id: nil, sold: false, elefe_id: 9, paiement_id: nil},
  {description: "Affiliation Reubrecht Frédéric", montant: 0.0, user_id: 20, com_batigrado_id: nil, ticket_repa_id: nil, sold: false, elefe_id: 10, paiement_id: nil},
  {description: "Affiliation Reubrecht Aymeric", montant: 0.0, user_id: 20, com_batigrado_id: nil, ticket_repa_id: nil, sold: false, elefe_id: 11, paiement_id: nil},
  {description: "Affiliation Reubrecht Nolwenn", montant: 0.0, user_id: 20, com_batigrado_id: nil, ticket_repa_id: nil, sold: false, elefe_id: 12, paiement_id: nil},
  {description: "Affiliation Bonnin Raphaël", montant: 0.0, user_id: 21, com_batigrado_id: nil, ticket_repa_id: nil, sold: false, elefe_id: 13, paiement_id: nil},
  {description: "Affiliation Bonnin Abigaïl", montant: 0.0, user_id: 21, com_batigrado_id: nil, ticket_repa_id: nil, sold: false, elefe_id: 14, paiement_id: nil},
  {description: "Affiliation Lebreton Guillaume", montant: 0.0, user_id: 22, com_batigrado_id: nil, ticket_repa_id: nil, sold: false, elefe_id: 15, paiement_id: nil},
  {description: "Affiliation Legrand Eugénie", montant: 0.0, user_id: 23, com_batigrado_id: nil, ticket_repa_id: nil, sold: false, elefe_id: 16, paiement_id: nil},
  {description: "Affiliation Lescarre Eric", montant: 0.0, user_id: 24, com_batigrado_id: nil, ticket_repa_id: nil, sold: false, elefe_id: 17, paiement_id: nil},
  {description: "Affiliation Lescarre Allan", montant: 0.0, user_id: 24, com_batigrado_id: nil, ticket_repa_id: nil, sold: false, elefe_id: 18, paiement_id: nil},
  {description: "Affiliation Migeon Clémence", montant: 0.0, user_id: 25, com_batigrado_id: nil, ticket_repa_id: nil, sold: false, elefe_id: 19, paiement_id: nil},
  {description: "Affiliation Migeon Mickaël", montant: 0.0, user_id: 25, com_batigrado_id: nil, ticket_repa_id: nil, sold: false, elefe_id: 20, paiement_id: nil},
  {description: "Affiliation Migeon Maxine", montant: 0.0, user_id: 25, com_batigrado_id: nil, ticket_repa_id: nil, sold: false, elefe_id: 21, paiement_id: nil},
  {description: "Affiliation Moullé Yalis", montant: 0.0, user_id: 26, com_batigrado_id: nil, ticket_repa_id: nil, sold: false, elefe_id: 22, paiement_id: nil},
  {description: "Affiliation Toquer Noé", montant: 0.0, user_id: 27, com_batigrado_id: nil, ticket_repa_id: nil, sold: false, elefe_id: 23, paiement_id: nil},
  {description: "Affiliation Aubisse Cécile", montant: 0.0, user_id: 28, com_batigrado_id: nil, ticket_repa_id: nil, sold: false, elefe_id: 24, paiement_id: nil},
  {description: "Affiliation Faucon Gaëlle", montant: 95.0, user_id: 29, com_batigrado_id: nil, ticket_repa_id: nil, sold: true, elefe_id: 37, paiement_id: 6},
  {description: "Affiliation Faucon Léandre", montant: 140.0, user_id: 29, com_batigrado_id: nil, ticket_repa_id: nil, sold: true, elefe_id: 38, paiement_id: 6}
])
Cour.create!([
  {nomvil: "Mayenne", adresse: "Salle Zulu\r\nComplexe Gambetta\r\n42 Place Gambetta", cp: "53100", telephon: "02", typcours: 1, dateh: "2017-11-29 18:00:00", duree: "2000-01-01 01:00:00", jour: "vendredi", enseignant_id: 1, acb: true, mailpres: "gcc.mayenne@gmail.com"},
  {nomvil: "Mayenne", adresse: "Salle Zulu\r\nComplexe Gambetta\r\n42 Place Gambetta\r\n53100 MAYENNE", cp: "53100", telephon: "02", typcours: 0, dateh: "2017-11-29 19:00:00", duree: "2000-01-01 01:30:00", jour: "vendredi", enseignant_id: 1, acb: true, mailpres: "gcc.mayenne@gmail.com"},
  {nomvil: "Evron", adresse: "Centre Socioculturel\r\nRue du Montaigu", cp: "53600", telephon: "02 43 01 63 22", typcours: 1, dateh: "2017-11-29 18:30:00", duree: "2000-01-01 01:00:00", jour: "mercredi", enseignant_id: 5, acb: false, mailpres: "gcc.evron@gmail.com"},
  {nomvil: "Laval", adresse: "Palindrome\r\n25 rue Albert Einstein", cp: "53000", telephon: "02 53 74 15 10", typcours: 1, dateh: "2017-11-29 18:30:00", duree: "2000-01-01 01:00:00", jour: "mardi", enseignant_id: 5, acb: true, mailpres: "gcc.laval@gmail.com"},
  {nomvil: "Laval", adresse: "Palindrome\r\n25 rue Albert Einstein", cp: "53000", telephon: "02 53 74 15 10", typcours: 0, dateh: "2017-11-29 19:30:00", duree: "2000-01-01 01:30:00", jour: "mardi", enseignant_id: 5, acb: true, mailpres: "gcc.laval@gmail.com"},
  {nomvil: "Vitre", adresse: "", cp: "35300", telephon: "0670324666", typcours: 1, dateh: "2017-11-29 18:30:00", duree: "2000-01-01 01:00:00", jour: "jeudi", enseignant_id: 3, acb: true, mailpres: "gcc.vitre@gmail.com"},
  {nomvil: "Villaines-la-Juhel", adresse: "Dojo de Villaines\r\nRue Jules Doitteau", cp: "53700", telephon: "", typcours: 2, dateh: "2017-12-01 19:00:00", duree: "2000-01-01 01:30:00", jour: "lundi", enseignant_id: 5, acb: true, mailpres: "gcc.avaloirs@gmail.com"},
  {nomvil: "Evron", adresse: "Centre Socioculturel\r\nRue du Montaigu\r\n53600 EVRON", cp: "53600", telephon: "02 43 01 63 22", typcours: 0, dateh: "2017-12-01 19:30:00", duree: "2000-01-01 01:30:00", jour: "mercredi", enseignant_id: 5, acb: false, mailpres: "gcc.evron@gmail.com"}
])
Elefe.create!([
  {nom: "Koala", prenom: "Jean", rue: "rue", cp: "53350", ville: "FONTAINE-COUVERTE", email: "a@a.com", date_naissance: "1984-04-29 00:00:00", tel_mobile: "06", tel_fixe: "02", graduation: 5, ville_entrainement: 5, a_signaler: "", urgence_nom: "mr", urgence_prenom: "truc", urgence_parentee: "pere", urgence_tel: "02", soin_moi: true, soin_tutelle: nil, info_ville: "Mayenne,Laval", gcc_connait: 1, parentee: 0, prix: 190, reglement: nil, signature: nil, presence_id: nil, user_id: 7, photo_file_name: "Aymeric_020917.png", photo_content_type: "image/png", photo_file_size: 176483, photo_updated_at: "2017-11-29 16:36:26", certifmed_file_name: "Capture_d’écran_2017-11-21_à_20.22.01.png", certifmed_content_type: "image/png", certifmed_file_size: 324312, certifmed_updated_at: "2017-11-29 16:36:26"},
  {nom: "Le Dem", prenom: "Gaël", rue: "Le Fay", cp: "53140", ville: "1", email: "gael.le_dem@orange.fr", date_naissance: "1971-03-26 00:00:00", tel_mobile: "-", tel_fixe: "02 43 03 12 44", graduation: 7, ville_entrainement: 7, a_signaler: "", urgence_nom: "Demontoux", urgence_prenom: "Séverine", urgence_parentee: "Epouse", urgence_tel: "02 43 03 12 44", soin_moi: true, soin_tutelle: nil, info_ville: "Villaines-la-Juhel", gcc_connait: nil, parentee: 0, prix: 190, reglement: nil, signature: true, presence_id: nil, user_id: 10, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, certifmed_file_name: "cert_med_gael_ledem.jpg", certifmed_content_type: "image/jpeg", certifmed_file_size: 130762, certifmed_updated_at: "2017-12-01 09:57:35"},
  {nom: "Rébulard", prenom: "Lucas", rue: "La Louvelière", cp: "53140", ville: "1", email: "rebulard@orange.fr", date_naissance: "2007-07-29 00:00:00", tel_mobile: "06 70 41 74 30", tel_fixe: "02 43 04 51 28", graduation: 1, ville_entrainement: 7, a_signaler: "", urgence_nom: "Rébulard", urgence_prenom: "Willy et Charlène", urgence_parentee: "Parents", urgence_tel: "06 70 41 74 30 / 06 72 84 67 59", soin_moi: false, soin_tutelle: nil, info_ville: "Villaines-la-Juhel", gcc_connait: 4, parentee: 2, prix: 140, reglement: nil, signature: false, presence_id: nil, user_id: 12, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, certifmed_file_name: "cert_med_lucas_rebulard.pdf", certifmed_content_type: "application/pdf", certifmed_file_size: 28788, certifmed_updated_at: "2017-12-01 18:54:43"},
  {nom: "Hamelin", prenom: "Zoé", rue: "5 rue du Château", cp: "53700", ville: "LOUPFOUGERES", email: "daniel.hamelin0307@orange.fr", date_naissance: "2007-12-08 00:00:00", tel_mobile: "06 32 05 62 11", tel_fixe: "02 43 00 07 94", graduation: 1, ville_entrainement: 7, a_signaler: "", urgence_nom: "Hamelin / Fleury", urgence_prenom: "Daniel / Caroline", urgence_parentee: "Parents", urgence_tel: "06 79 83 88 02", soin_moi: false, soin_tutelle: nil, info_ville: "Villaines-la-Juhel", gcc_connait: 6, parentee: 2, prix: 140, reglement: nil, signature: nil, presence_id: nil, user_id: 13, photo_file_name: "zoe_hamelin.jpg", photo_content_type: "image/jpeg", photo_file_size: 39743, photo_updated_at: "2017-12-01 19:36:59", certifmed_file_name: "cert_med_zoe_hamelin.jpg", certifmed_content_type: "image/jpeg", certifmed_file_size: 200452, certifmed_updated_at: "2017-12-01 19:36:59"},
  {nom: "Foulon", prenom: "Olivia", rue: "La Verderie", cp: "53600", ville: "EVRON", email: "clograndin@yahoo.fr", date_naissance: "2008-10-10 00:00:00", tel_mobile: "06 22 46 03 33", tel_fixe: "02 43 37 42 63", graduation: 1, ville_entrainement: 3, a_signaler: "", urgence_nom: "Grandin", urgence_prenom: "Clotilde", urgence_parentee: "Mère", urgence_tel: "06 22 46 03 33", soin_moi: false, soin_tutelle: nil, info_ville: "Evron", gcc_connait: nil, parentee: 4, prix: 0, reglement: nil, signature: nil, presence_id: nil, user_id: 14, photo_file_name: "olivia_foulon.jpg", photo_content_type: "image/jpeg", photo_file_size: 44165, photo_updated_at: "2017-12-01 19:44:24", certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Billon", prenom: "Célia", rue: "7 rue des Charmilles", cp: "53600", ville: "EVRON", email: "cindy.chauviere@sfr.fr", date_naissance: "2011-05-19 00:00:00", tel_mobile: "06 01 49 49 49", tel_fixe: "-", graduation: 1, ville_entrainement: 3, a_signaler: "", urgence_nom: "Chauvière", urgence_prenom: "Cindy", urgence_parentee: "Mère", urgence_tel: "06 01 49 49 49", soin_moi: false, soin_tutelle: nil, info_ville: "Evron,Laval", gcc_connait: 1, parentee: 4, prix: 0, reglement: nil, signature: nil, presence_id: nil, user_id: 16, photo_file_name: "celia_billon.jpg", photo_content_type: "image/jpeg", photo_file_size: 35995, photo_updated_at: "2017-12-02 13:13:27", certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Patault", prenom: "Maïlys", rue: "4 rue de la Lande Chevreau", cp: "53600", ville: "EVRON", email: "sebastien.patault@orange.fr", date_naissance: "2008-01-18 00:00:00", tel_mobile: "06 86 83 00 88", tel_fixe: "02 43 02 58 53", graduation: 1, ville_entrainement: 7, a_signaler: "", urgence_nom: "Patault", urgence_prenom: "Laurence", urgence_parentee: "Mère", urgence_tel: "06 86 83 00 88", soin_moi: false, soin_tutelle: nil, info_ville: "Evron,Villaines-la-Juhel", gcc_connait: 4, parentee: 2, prix: 140, reglement: nil, signature: nil, presence_id: nil, user_id: 17, photo_file_name: "maïlys_patault.png", photo_content_type: "image/png", photo_file_size: 194779, photo_updated_at: "2017-12-02 13:16:27", certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Camara", prenom: "Yoni", rue: "6 promenade des Grands Près", cp: "53600", ville: "EVRON", email: "virg.gonnet@yahoo.fr", date_naissance: "2010-02-11 00:00:00", tel_mobile: "06 14 88 58 24", tel_fixe: "09 73 64 10 25", graduation: 1, ville_entrainement: 3, a_signaler: "Allergie arachides, kiwis", urgence_nom: "Gonnet", urgence_prenom: "Virginie", urgence_parentee: "Maman", urgence_tel: "06 14 88 58 24", soin_moi: false, soin_tutelle: nil, info_ville: "Evron", gcc_connait: nil, parentee: 4, prix: 0, reglement: nil, signature: nil, presence_id: nil, user_id: 18, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Pottier", prenom: "Pascal", rue: "La Maison Neuve", cp: "72350", ville: "SAINT-DENIS-D'ORQUES", email: "pottierpascal@live.fr", date_naissance: "1964-04-20 00:00:00", tel_mobile: "06 70 06 36 79", tel_fixe: "-", graduation: 5, ville_entrainement: 7, a_signaler: "", urgence_nom: "Pottier", urgence_prenom: "Paulette", urgence_parentee: "Epouse", urgence_tel: "06 70 15 89 20", soin_moi: true, soin_tutelle: nil, info_ville: "Evron,Villaines-la-Juhel", gcc_connait: nil, parentee: 4, prix: 0, reglement: nil, signature: nil, presence_id: nil, user_id: 19, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Reubrecht", prenom: "Frédéric", rue: "Le Bas Bourg", cp: "53600", ville: "1", email: "frederic.reubrecht@gmail.com", date_naissance: "1971-10-02 00:00:00", tel_mobile: "06 45 67 28 03", tel_fixe: "02 43 98 86 19", graduation: 6, ville_entrainement: 8, a_signaler: "", urgence_nom: "Reubrecht", urgence_prenom: "Delphine", urgence_parentee: "Epouse", urgence_tel: "02 43 98 86 19", soin_moi: true, soin_tutelle: nil, info_ville: "Evron,Laval,Villaines-la-Juhel", gcc_connait: 5, parentee: 4, prix: 0, reglement: nil, signature: false, presence_id: nil, user_id: 20, photo_file_name: "CCE45420-4F63-42FF-B982-F6127F31C8C6.jpeg", photo_content_type: "image/jpeg", photo_file_size: 60935, photo_updated_at: "2017-12-08 09:21:54", certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Reubrecht", prenom: "Aymeric", rue: "Le Bas Bourg", cp: "53600", ville: "CHATRES-LA-FORET", email: "frederic.reubrecht@gmail.com", date_naissance: "2002-12-21 00:00:00", tel_mobile: "-", tel_fixe: "02 43 98 86 19", graduation: 4, ville_entrainement: 8, a_signaler: "", urgence_nom: "Reubrecht", urgence_prenom: "Delphine", urgence_parentee: "Mère", urgence_tel: "02 43 98 86 19", soin_moi: false, soin_tutelle: nil, info_ville: "Evron,Villaines-la-Juhel", gcc_connait: 6, parentee: 4, prix: 0, reglement: nil, signature: nil, presence_id: nil, user_id: 20, photo_file_name: "Aymeric_020917.png", photo_content_type: "image/png", photo_file_size: 176483, photo_updated_at: "2017-12-02 13:46:02", certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Reubrecht", prenom: "Nolwenn", rue: "Le Bas Bourg", cp: "53600", ville: "CHATRES-LA-FORET", email: "frederic.reubrecht@gmail.com", date_naissance: "2008-05-01 00:00:00", tel_mobile: "-", tel_fixe: "02 43 98 86 19", graduation: 1, ville_entrainement: 3, a_signaler: "", urgence_nom: "Reubrecht", urgence_prenom: "Delphine et Frédéric", urgence_parentee: "Parents", urgence_tel: "02 43 98 86 19 - 06 45 67 28 03", soin_moi: false, soin_tutelle: nil, info_ville: "Evron,Villaines-la-Juhel", gcc_connait: 6, parentee: 4, prix: 0, reglement: nil, signature: true, presence_id: nil, user_id: 20, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Bonnin", prenom: "Raphaël", rue: "6 rue du Bois du Tay", cp: "53160", ville: "HAMBERS", email: "mabreb@wanadoo.fr", date_naissance: "2003-04-11 00:00:00", tel_mobile: "06 95 56 38 06", tel_fixe: "02 43 98 13 84", graduation: 3, ville_entrainement: 8, a_signaler: "", urgence_nom: "Bonnin", urgence_prenom: "Régis et Manuella", urgence_parentee: "Parents", urgence_tel: "06 95 56 38 06", soin_moi: false, soin_tutelle: nil, info_ville: "Evron", gcc_connait: 6, parentee: 4, prix: 0, reglement: nil, signature: nil, presence_id: nil, user_id: 21, photo_file_name: "bonnin_raphael.jpg", photo_content_type: "image/jpeg", photo_file_size: 29876, photo_updated_at: "2017-12-02 13:59:06", certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Bonnin", prenom: "Abigaïl", rue: "6 rue du Bois du Tay", cp: "53160", ville: "HAMBERS", email: "mabreb@wanadoo.fr", date_naissance: "2001-01-01 00:00:00", tel_mobile: "06 95 56 38 06", tel_fixe: "02 43 98 13 84", graduation: 2, ville_entrainement: 8, a_signaler: "", urgence_nom: "Bonnin", urgence_prenom: "Régis et Manuella", urgence_parentee: "Parents", urgence_tel: "06 95 56 38 06", soin_moi: false, soin_tutelle: nil, info_ville: "Evron", gcc_connait: nil, parentee: 4, prix: 0, reglement: nil, signature: nil, presence_id: nil, user_id: 21, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Lebreton", prenom: "Guillaume", rue: "-", cp: "53", ville: "HARDANGES", email: "guillaume@grupoculturacapoeira.com", date_naissance: "1981-10-26 00:00:00", tel_mobile: "-", tel_fixe: "-", graduation: 8, ville_entrainement: 7, a_signaler: "", urgence_nom: "-", urgence_prenom: "-", urgence_parentee: "-", urgence_tel: "-", soin_moi: true, soin_tutelle: nil, info_ville: nil, gcc_connait: nil, parentee: 4, prix: 0, reglement: nil, signature: nil, presence_id: nil, user_id: 22, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Legrand", prenom: "Eugénie", rue: "-", cp: "53270", ville: "SAINT-JEAN-SUR-ERVE", email: "eugenie03@hotmail.fr", date_naissance: "1987-04-03 00:00:00", tel_mobile: "06 89 73 96 75", tel_fixe: "-", graduation: 3, ville_entrainement: 8, a_signaler: "", urgence_nom: "Legrand", urgence_prenom: "-", urgence_parentee: "Parents", urgence_tel: "06 84 53 06 41", soin_moi: true, soin_tutelle: nil, info_ville: nil, gcc_connait: nil, parentee: 4, prix: 0, reglement: nil, signature: nil, presence_id: nil, user_id: 23, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Lescarret", prenom: "Eric", rue: "-", cp: "53600", ville: "EVRON", email: "gcc.evron@gmail.com", date_naissance: "1987-01-01 00:00:00", tel_mobile: "06 37 34 12 00", tel_fixe: "-", graduation: 3, ville_entrainement: 8, a_signaler: "", urgence_nom: "-", urgence_prenom: "-", urgence_parentee: "-", urgence_tel: "-", soin_moi: true, soin_tutelle: nil, info_ville: nil, gcc_connait: nil, parentee: 4, prix: 0, reglement: nil, signature: false, presence_id: nil, user_id: 24, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Lescarret", prenom: "Allan", rue: "-", cp: "53600", ville: "EVRON", email: "gcc.evron@gmail.com", date_naissance: "2000-12-02 00:00:00", tel_mobile: "-", tel_fixe: "-", graduation: 2, ville_entrainement: 8, a_signaler: "", urgence_nom: "-", urgence_prenom: "-", urgence_parentee: "Père", urgence_tel: "06 37 34 12 00", soin_moi: false, soin_tutelle: nil, info_ville: nil, gcc_connait: nil, parentee: 4, prix: 0, reglement: nil, signature: false, presence_id: nil, user_id: 24, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Migeon", prenom: "Clémence", rue: "rue de Plaisance", cp: "53600", ville: "EVRON", email: "clemence.doison@yahoo.fr", date_naissance: "1987-12-05 00:00:00", tel_mobile: "06 23 70 33 22", tel_fixe: "-", graduation: 3, ville_entrainement: 8, a_signaler: "", urgence_nom: "Migeon", urgence_prenom: "Mickaël", urgence_parentee: "Epoux", urgence_tel: "06 74 87 86 21", soin_moi: true, soin_tutelle: nil, info_ville: "Mayenne,Evron,Laval", gcc_connait: nil, parentee: 4, prix: 0, reglement: nil, signature: nil, presence_id: nil, user_id: 25, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Migeon", prenom: "Mickaël", rue: "rue de Plaisance", cp: "53600", ville: "EVRON", email: "clemence.doison@yahoo.fr", date_naissance: "1977-12-03 00:00:00", tel_mobile: "06 74 87 86 21", tel_fixe: "-", graduation: 2, ville_entrainement: 8, a_signaler: "", urgence_nom: "Migeon", urgence_prenom: "Clémence", urgence_parentee: "Epouse", urgence_tel: "06 23 70 33 22", soin_moi: true, soin_tutelle: nil, info_ville: nil, gcc_connait: nil, parentee: 4, prix: 0, reglement: nil, signature: nil, presence_id: nil, user_id: 25, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Migeon", prenom: "Maxine", rue: "rue de Plaisance", cp: "53600", ville: "EVRON", email: "gcc.evron@gmail.com", date_naissance: "2011-09-01 00:00:00", tel_mobile: "-", tel_fixe: "-", graduation: 1, ville_entrainement: 3, a_signaler: "", urgence_nom: "Migeon", urgence_prenom: "Clémence et Mickaël", urgence_parentee: "Parents", urgence_tel: "06 23 70 33 22 - 06 74 87 86 21", soin_moi: false, soin_tutelle: nil, info_ville: nil, gcc_connait: nil, parentee: 4, prix: 0, reglement: nil, signature: false, presence_id: nil, user_id: 25, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Moullé", prenom: "Yalis", rue: "3 bis rue de Ste Suzanne", cp: "53600", ville: "EVRON", email: "djemadogore@gmail.com", date_naissance: "2003-01-01 00:00:00", tel_mobile: "-", tel_fixe: "-", graduation: 4, ville_entrainement: 8, a_signaler: "", urgence_nom: "-", urgence_prenom: "-", urgence_parentee: "Mère", urgence_tel: "-", soin_moi: false, soin_tutelle: nil, info_ville: nil, gcc_connait: nil, parentee: 4, prix: 0, reglement: nil, signature: nil, presence_id: nil, user_id: 26, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Toquer", prenom: "Noé", rue: "-", cp: "53600", ville: "EVRON", email: "chartmannt@hotmail.com", date_naissance: "2007-12-03 00:00:00", tel_mobile: "-", tel_fixe: "-", graduation: 1, ville_entrainement: 8, a_signaler: "", urgence_nom: "-", urgence_prenom: "-", urgence_parentee: "Mère", urgence_tel: "-", soin_moi: false, soin_tutelle: nil, info_ville: nil, gcc_connait: nil, parentee: 4, prix: 0, reglement: nil, signature: nil, presence_id: nil, user_id: 27, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Aubisse", prenom: "Cécile", rue: "-", cp: "53160", ville: "HAMBERS", email: "c.aubisse@laposte.net", date_naissance: "1992-01-01 00:00:00", tel_mobile: "06 13 22 45 11", tel_fixe: "-", graduation: 2, ville_entrainement: 8, a_signaler: "", urgence_nom: "-", urgence_prenom: "-", urgence_parentee: "-", urgence_tel: "-", soin_moi: true, soin_tutelle: nil, info_ville: nil, gcc_connait: nil, parentee: 4, prix: 0, reglement: nil, signature: nil, presence_id: nil, user_id: 28, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Flohic", prenom: "Nicolas", rue: "-", cp: "-", ville: "-", email: nil, date_naissance: nil, tel_mobile: "-", tel_fixe: "-", graduation: nil, ville_entrainement: 8, a_signaler: nil, urgence_nom: "-", urgence_prenom: "-", urgence_parentee: nil, urgence_tel: "-", soin_moi: false, soin_tutelle: nil, info_ville: nil, gcc_connait: nil, parentee: 5, prix: nil, reglement: nil, signature: nil, presence_id: nil, user_id: nil, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Lelièvre", prenom: "Fany", rue: "-", cp: "-", ville: "-", email: nil, date_naissance: nil, tel_mobile: "-", tel_fixe: "-", graduation: nil, ville_entrainement: 8, a_signaler: nil, urgence_nom: "-", urgence_prenom: "-", urgence_parentee: nil, urgence_tel: "-", soin_moi: false, soin_tutelle: nil, info_ville: nil, gcc_connait: nil, parentee: 5, prix: nil, reglement: nil, signature: nil, presence_id: nil, user_id: nil, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Hubert", prenom: "Alexia", rue: "-", cp: "-", ville: "-", email: nil, date_naissance: nil, tel_mobile: "-", tel_fixe: "-", graduation: nil, ville_entrainement: 8, a_signaler: nil, urgence_nom: "-", urgence_prenom: "-", urgence_parentee: nil, urgence_tel: "-", soin_moi: false, soin_tutelle: nil, info_ville: nil, gcc_connait: nil, parentee: 5, prix: nil, reglement: nil, signature: nil, presence_id: nil, user_id: nil, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Lescarret", prenom: "Sarah", rue: "-", cp: "-", ville: "-", email: nil, date_naissance: nil, tel_mobile: "-", tel_fixe: "-", graduation: nil, ville_entrainement: 8, a_signaler: nil, urgence_nom: "-", urgence_prenom: "-", urgence_parentee: nil, urgence_tel: "-", soin_moi: false, soin_tutelle: nil, info_ville: nil, gcc_connait: nil, parentee: 5, prix: nil, reglement: nil, signature: nil, presence_id: nil, user_id: nil, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Barrais", prenom: "Bérénice", rue: "-", cp: "-", ville: "-", email: nil, date_naissance: nil, tel_mobile: "-", tel_fixe: "-", graduation: nil, ville_entrainement: 3, a_signaler: nil, urgence_nom: "-", urgence_prenom: "-", urgence_parentee: nil, urgence_tel: "-", soin_moi: false, soin_tutelle: nil, info_ville: nil, gcc_connait: nil, parentee: 5, prix: nil, reglement: nil, signature: nil, presence_id: nil, user_id: nil, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Launay", prenom: "Anaïs", rue: "-", cp: "-", ville: "-", email: nil, date_naissance: nil, tel_mobile: "-", tel_fixe: "-", graduation: nil, ville_entrainement: 3, a_signaler: nil, urgence_nom: "-", urgence_prenom: "-", urgence_parentee: nil, urgence_tel: "-", soin_moi: false, soin_tutelle: nil, info_ville: nil, gcc_connait: nil, parentee: 5, prix: nil, reglement: nil, signature: nil, presence_id: nil, user_id: nil, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Torchet", prenom: "Talya", rue: "-", cp: "-", ville: "-", email: nil, date_naissance: nil, tel_mobile: "-", tel_fixe: "-", graduation: nil, ville_entrainement: 3, a_signaler: nil, urgence_nom: "-", urgence_prenom: "-", urgence_parentee: nil, urgence_tel: "-", soin_moi: false, soin_tutelle: nil, info_ville: nil, gcc_connait: nil, parentee: 5, prix: nil, reglement: nil, signature: nil, presence_id: nil, user_id: nil, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Comsel", prenom: "Andrew", rue: "-", cp: "-", ville: "-", email: nil, date_naissance: nil, tel_mobile: "-", tel_fixe: "-", graduation: nil, ville_entrainement: 3, a_signaler: nil, urgence_nom: "-", urgence_prenom: "-", urgence_parentee: nil, urgence_tel: "-", soin_moi: false, soin_tutelle: nil, info_ville: nil, gcc_connait: nil, parentee: 5, prix: nil, reglement: nil, signature: nil, presence_id: nil, user_id: nil, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Chabussière", prenom: "Quentin", rue: "-", cp: "-", ville: "-", email: nil, date_naissance: nil, tel_mobile: "-", tel_fixe: "-", graduation: nil, ville_entrainement: 3, a_signaler: nil, urgence_nom: "-", urgence_prenom: "-", urgence_parentee: nil, urgence_tel: "-", soin_moi: false, soin_tutelle: nil, info_ville: nil, gcc_connait: nil, parentee: 5, prix: nil, reglement: nil, signature: nil, presence_id: nil, user_id: nil, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Guerineau", prenom: "Florine", rue: "-", cp: "-", ville: "-", email: nil, date_naissance: nil, tel_mobile: "-", tel_fixe: "-", graduation: nil, ville_entrainement: 3, a_signaler: nil, urgence_nom: "-", urgence_prenom: "-", urgence_parentee: nil, urgence_tel: "-", soin_moi: false, soin_tutelle: nil, info_ville: nil, gcc_connait: nil, parentee: 5, prix: nil, reglement: nil, signature: nil, presence_id: nil, user_id: nil, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Lontuas", prenom: "Vathéa", rue: "-", cp: "-", ville: "-", email: nil, date_naissance: nil, tel_mobile: "-", tel_fixe: "-", graduation: nil, ville_entrainement: 3, a_signaler: nil, urgence_nom: "-", urgence_prenom: "-", urgence_parentee: nil, urgence_tel: "-", soin_moi: false, soin_tutelle: nil, info_ville: nil, gcc_connait: nil, parentee: 5, prix: nil, reglement: nil, signature: nil, presence_id: nil, user_id: nil, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Dourlent", prenom: "Ilan", rue: "-", cp: "-", ville: "-", email: nil, date_naissance: nil, tel_mobile: "-", tel_fixe: "-", graduation: nil, ville_entrainement: 3, a_signaler: nil, urgence_nom: "-", urgence_prenom: "-", urgence_parentee: nil, urgence_tel: "-", soin_moi: false, soin_tutelle: nil, info_ville: nil, gcc_connait: nil, parentee: 5, prix: nil, reglement: nil, signature: nil, presence_id: nil, user_id: nil, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Faucon", prenom: "Gaëlle", rue: "-", cp: "53700", ville: "VILLAINES-LA-JUHEL", email: "antonnerir@live.com", date_naissance: "1980-01-01 00:00:00", tel_mobile: "06 83 78 38 61", tel_fixe: "-", graduation: 3, ville_entrainement: 7, a_signaler: "", urgence_nom: "-", urgence_prenom: "-", urgence_parentee: "-", urgence_tel: "-", soin_moi: true, soin_tutelle: nil, info_ville: "Villaines-la-Juhel", gcc_connait: nil, parentee: 0, prix: 190, reglement: nil, signature: nil, presence_id: nil, user_id: 29, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil},
  {nom: "Faucon", prenom: "Léandre", rue: "-", cp: "53700", ville: "VILLAINES-LA-JUHEL", email: "antonnerir@live.com", date_naissance: "2004-01-01 00:00:00", tel_mobile: "-", tel_fixe: "-", graduation: 1, ville_entrainement: 7, a_signaler: "", urgence_nom: "Faucon", urgence_prenom: "Gaëlle", urgence_parentee: "Mère", urgence_tel: "06 83 78 38 61", soin_moi: false, soin_tutelle: nil, info_ville: "Villaines-la-Juhel", gcc_connait: nil, parentee: 2, prix: 140, reglement: nil, signature: nil, presence_id: nil, user_id: 29, photo_file_name: nil, photo_content_type: nil, photo_file_size: nil, photo_updated_at: nil, certifmed_file_name: nil, certifmed_content_type: nil, certifmed_file_size: nil, certifmed_updated_at: nil}
])
Enseignant.create!([
  {nom: "Poirier", prenom: "Christophe", graduation: 9},
  {nom: "Batier", prenom: "Aurélien", graduation: 9},
  {nom: "Berteau", prenom: "Caroline", graduation: 9},
  {nom: "Landais", prenom: "Jessie", graduation: 9},
  {nom: "Brandão", prenom: "Marcelo", graduation: 12},
  {nom: "Letard", prenom: "Jérémy", graduation: 9},
  {nom: "Duchesne", prenom: "Fabrice", graduation: 8},
  {nom: "Le Dem", prenom: "Gaël", graduation: 7},
  {nom: "Reubrecht", prenom: "Frédéric", graduation: 6},
  {nom: "Lebreton", prenom: "Guillaume", graduation: 8},
  {nom: "Blandeau", prenom: "Floriane", graduation: 9}
])
Etat.create!([
  {etat: "P", description: nil, presence_id: 11, elefe_id: 9, ponctuel: true},
  {etat: "P", description: nil, presence_id: 11, elefe_id: 10, ponctuel: false},
  {etat: "P", description: nil, presence_id: 11, elefe_id: 11, ponctuel: false},
  {etat: "P", description: nil, presence_id: 11, elefe_id: 13, ponctuel: false},
  {etat: "P", description: nil, presence_id: 11, elefe_id: 14, ponctuel: false},
  {etat: "P", description: nil, presence_id: 11, elefe_id: 15, ponctuel: true},
  {etat: "P", description: nil, presence_id: 11, elefe_id: 16, ponctuel: false},
  {etat: "P", description: nil, presence_id: 11, elefe_id: 17, ponctuel: false},
  {etat: "P", description: nil, presence_id: 11, elefe_id: 18, ponctuel: false},
  {etat: "P", description: nil, presence_id: 11, elefe_id: 19, ponctuel: false},
  {etat: "P", description: nil, presence_id: 11, elefe_id: 20, ponctuel: false},
  {etat: "P", description: nil, presence_id: 11, elefe_id: 22, ponctuel: false},
  {etat: "P", description: nil, presence_id: 11, elefe_id: 23, ponctuel: false},
  {etat: "P", description: nil, presence_id: 11, elefe_id: 24, ponctuel: false},
  {etat: "P", description: nil, presence_id: 11, elefe_id: 25, ponctuel: true},
  {etat: "P", description: nil, presence_id: 11, elefe_id: 26, ponctuel: true},
  {etat: "P", description: nil, presence_id: 11, elefe_id: 27, ponctuel: false},
  {etat: "A", description: nil, presence_id: 11, elefe_id: 28, ponctuel: true},
  {etat: "P", description: nil, presence_id: 12, elefe_id: 9, ponctuel: true},
  {etat: "P", description: nil, presence_id: 12, elefe_id: 10, ponctuel: false},
  {etat: "P", description: nil, presence_id: 12, elefe_id: 11, ponctuel: false},
  {etat: "P", description: nil, presence_id: 12, elefe_id: 13, ponctuel: false},
  {etat: "P", description: nil, presence_id: 12, elefe_id: 14, ponctuel: false},
  {etat: "P", description: nil, presence_id: 12, elefe_id: 15, ponctuel: true},
  {etat: "P", description: nil, presence_id: 12, elefe_id: 16, ponctuel: false},
  {etat: "P", description: nil, presence_id: 12, elefe_id: 17, ponctuel: false},
  {etat: "P", description: nil, presence_id: 12, elefe_id: 18, ponctuel: false},
  {etat: "P", description: nil, presence_id: 12, elefe_id: 19, ponctuel: false},
  {etat: "P", description: nil, presence_id: 12, elefe_id: 20, ponctuel: false},
  {etat: "P", description: nil, presence_id: 12, elefe_id: 22, ponctuel: false},
  {etat: "P", description: nil, presence_id: 12, elefe_id: 23, ponctuel: false},
  {etat: "P", description: nil, presence_id: 12, elefe_id: 24, ponctuel: false},
  {etat: "P", description: nil, presence_id: 12, elefe_id: 25, ponctuel: true},
  {etat: "P", description: nil, presence_id: 12, elefe_id: 26, ponctuel: true},
  {etat: "P", description: nil, presence_id: 12, elefe_id: 27, ponctuel: false},
  {etat: "P", description: nil, presence_id: 12, elefe_id: 28, ponctuel: true},
  {etat: "P", description: nil, presence_id: 13, elefe_id: 9, ponctuel: true},
  {etat: "P", description: nil, presence_id: 13, elefe_id: 10, ponctuel: false},
  {etat: "P", description: nil, presence_id: 13, elefe_id: 11, ponctuel: false},
  {etat: "P", description: nil, presence_id: 13, elefe_id: 13, ponctuel: false},
  {etat: "P", description: nil, presence_id: 13, elefe_id: 14, ponctuel: false},
  {etat: "P", description: nil, presence_id: 13, elefe_id: 15, ponctuel: true},
  {etat: "J", description: nil, presence_id: 13, elefe_id: 16, ponctuel: false},
  {etat: "P", description: nil, presence_id: 13, elefe_id: 17, ponctuel: false},
  {etat: "P", description: nil, presence_id: 13, elefe_id: 18, ponctuel: false},
  {etat: "P", description: nil, presence_id: 13, elefe_id: 19, ponctuel: false},
  {etat: "P", description: nil, presence_id: 13, elefe_id: 20, ponctuel: false},
  {etat: "P", description: nil, presence_id: 13, elefe_id: 22, ponctuel: false},
  {etat: "P", description: nil, presence_id: 13, elefe_id: 23, ponctuel: false},
  {etat: "P", description: nil, presence_id: 13, elefe_id: 24, ponctuel: false},
  {etat: "P", description: nil, presence_id: 13, elefe_id: 25, ponctuel: true},
  {etat: "P", description: nil, presence_id: 13, elefe_id: 26, ponctuel: true},
  {etat: "P", description: nil, presence_id: 13, elefe_id: 27, ponctuel: false},
  {etat: "P", description: nil, presence_id: 13, elefe_id: 28, ponctuel: true},
  {etat: "P", description: nil, presence_id: 14, elefe_id: 9, ponctuel: true},
  {etat: "P", description: nil, presence_id: 14, elefe_id: 10, ponctuel: false},
  {etat: "P", description: nil, presence_id: 14, elefe_id: 11, ponctuel: false},
  {etat: "P", description: nil, presence_id: 14, elefe_id: 13, ponctuel: false},
  {etat: "P", description: nil, presence_id: 14, elefe_id: 14, ponctuel: false},
  {etat: "P", description: nil, presence_id: 14, elefe_id: 15, ponctuel: true},
  {etat: "P", description: nil, presence_id: 14, elefe_id: 16, ponctuel: false},
  {etat: "P", description: nil, presence_id: 14, elefe_id: 17, ponctuel: false},
  {etat: "P", description: nil, presence_id: 14, elefe_id: 18, ponctuel: false},
  {etat: "M/B", description: nil, presence_id: 14, elefe_id: 19, ponctuel: false},
  {etat: "P", description: nil, presence_id: 14, elefe_id: 20, ponctuel: false},
  {etat: "P", description: nil, presence_id: 14, elefe_id: 22, ponctuel: false},
  {etat: "P", description: nil, presence_id: 14, elefe_id: 23, ponctuel: false},
  {etat: "P", description: nil, presence_id: 14, elefe_id: 24, ponctuel: false},
  {etat: "P", description: nil, presence_id: 14, elefe_id: 25, ponctuel: true},
  {etat: "P", description: nil, presence_id: 14, elefe_id: 26, ponctuel: true},
  {etat: "P", description: nil, presence_id: 14, elefe_id: 27, ponctuel: false},
  {etat: "P", description: nil, presence_id: 14, elefe_id: 28, ponctuel: true},
  {etat: "P", description: nil, presence_id: 15, elefe_id: 9, ponctuel: true},
  {etat: "P", description: nil, presence_id: 15, elefe_id: 10, ponctuel: false},
  {etat: "P", description: nil, presence_id: 15, elefe_id: 11, ponctuel: false},
  {etat: "P", description: nil, presence_id: 15, elefe_id: 13, ponctuel: false},
  {etat: "P", description: nil, presence_id: 15, elefe_id: 14, ponctuel: false},
  {etat: "P", description: nil, presence_id: 15, elefe_id: 15, ponctuel: true},
  {etat: "P", description: nil, presence_id: 15, elefe_id: 16, ponctuel: false},
  {etat: "P", description: nil, presence_id: 15, elefe_id: 17, ponctuel: false},
  {etat: "P", description: nil, presence_id: 15, elefe_id: 18, ponctuel: false},
  {etat: "M/B", description: nil, presence_id: 15, elefe_id: 19, ponctuel: false},
  {etat: "P", description: nil, presence_id: 15, elefe_id: 20, ponctuel: false},
  {etat: "P", description: nil, presence_id: 15, elefe_id: 22, ponctuel: false},
  {etat: "A", description: nil, presence_id: 15, elefe_id: 23, ponctuel: false},
  {etat: "P", description: nil, presence_id: 15, elefe_id: 24, ponctuel: false},
  {etat: "A", description: nil, presence_id: 15, elefe_id: 25, ponctuel: true},
  {etat: "A", description: nil, presence_id: 15, elefe_id: 26, ponctuel: true},
  {etat: "P", description: nil, presence_id: 15, elefe_id: 27, ponctuel: false},
  {etat: "P", description: nil, presence_id: 15, elefe_id: 28, ponctuel: true},
  {etat: "A", description: nil, presence_id: 16, elefe_id: 9, ponctuel: false},
  {etat: "P", description: nil, presence_id: 16, elefe_id: 10, ponctuel: false},
  {etat: "P", description: nil, presence_id: 16, elefe_id: 11, ponctuel: false},
  {etat: "P", description: nil, presence_id: 16, elefe_id: 13, ponctuel: false},
  {etat: "P", description: nil, presence_id: 16, elefe_id: 14, ponctuel: false},
  {etat: "J", description: nil, presence_id: 16, elefe_id: 15, ponctuel: false},
  {etat: "P", description: nil, presence_id: 16, elefe_id: 16, ponctuel: false},
  {etat: "P", description: nil, presence_id: 16, elefe_id: 17, ponctuel: false},
  {etat: "P", description: nil, presence_id: 16, elefe_id: 18, ponctuel: false},
  {etat: "P", description: nil, presence_id: 16, elefe_id: 19, ponctuel: false},
  {etat: "P", description: nil, presence_id: 16, elefe_id: 20, ponctuel: false},
  {etat: "P", description: nil, presence_id: 16, elefe_id: 22, ponctuel: false},
  {etat: "P", description: nil, presence_id: 16, elefe_id: 23, ponctuel: false},
  {etat: "P", description: nil, presence_id: 16, elefe_id: 24, ponctuel: false},
  {etat: "J", description: nil, presence_id: 16, elefe_id: 25, ponctuel: false},
  {etat: "J", description: nil, presence_id: 16, elefe_id: 26, ponctuel: false},
  {etat: "P", description: nil, presence_id: 16, elefe_id: 27, ponctuel: false},
  {etat: "M/B", description: nil, presence_id: 16, elefe_id: 28, ponctuel: false},
  {etat: "A", description: nil, presence_id: 17, elefe_id: 9, ponctuel: false},
  {etat: "P", description: nil, presence_id: 17, elefe_id: 10, ponctuel: false},
  {etat: "P", description: nil, presence_id: 17, elefe_id: 11, ponctuel: false},
  {etat: "P", description: nil, presence_id: 17, elefe_id: 13, ponctuel: false},
  {etat: "P", description: nil, presence_id: 17, elefe_id: 14, ponctuel: false},
  {etat: "P", description: nil, presence_id: 17, elefe_id: 15, ponctuel: false},
  {etat: "P", description: nil, presence_id: 17, elefe_id: 16, ponctuel: false},
  {etat: "J", description: nil, presence_id: 17, elefe_id: 17, ponctuel: false},
  {etat: "P", description: nil, presence_id: 17, elefe_id: 18, ponctuel: false},
  {etat: "P", description: nil, presence_id: 17, elefe_id: 19, ponctuel: false},
  {etat: "P", description: nil, presence_id: 17, elefe_id: 20, ponctuel: false},
  {etat: "P", description: nil, presence_id: 17, elefe_id: 22, ponctuel: false},
  {etat: "P", description: nil, presence_id: 17, elefe_id: 23, ponctuel: false},
  {etat: "P", description: nil, presence_id: 17, elefe_id: 24, ponctuel: false},
  {etat: "A", description: nil, presence_id: 17, elefe_id: 25, ponctuel: false},
  {etat: "A", description: nil, presence_id: 17, elefe_id: 26, ponctuel: false},
  {etat: "P", description: nil, presence_id: 17, elefe_id: 27, ponctuel: false},
  {etat: "P", description: nil, presence_id: 17, elefe_id: 28, ponctuel: false},
  {etat: "P", description: nil, presence_id: 18, elefe_id: 9, ponctuel: false},
  {etat: "P", description: nil, presence_id: 18, elefe_id: 10, ponctuel: false},
  {etat: "P", description: nil, presence_id: 18, elefe_id: 11, ponctuel: false},
  {etat: "P", description: nil, presence_id: 18, elefe_id: 13, ponctuel: false},
  {etat: "P", description: nil, presence_id: 18, elefe_id: 14, ponctuel: false},
  {etat: "J", description: nil, presence_id: 18, elefe_id: 15, ponctuel: false},
  {etat: "P", description: nil, presence_id: 18, elefe_id: 16, ponctuel: false},
  {etat: "P", description: nil, presence_id: 18, elefe_id: 17, ponctuel: false},
  {etat: "P", description: nil, presence_id: 18, elefe_id: 18, ponctuel: false},
  {etat: "P", description: nil, presence_id: 18, elefe_id: 19, ponctuel: false},
  {etat: "P", description: nil, presence_id: 18, elefe_id: 20, ponctuel: false},
  {etat: "P", description: nil, presence_id: 18, elefe_id: 22, ponctuel: false},
  {etat: "P", description: nil, presence_id: 18, elefe_id: 23, ponctuel: false},
  {etat: "J", description: nil, presence_id: 18, elefe_id: 24, ponctuel: false},
  {etat: "A", description: nil, presence_id: 18, elefe_id: 25, ponctuel: false},
  {etat: "A", description: nil, presence_id: 18, elefe_id: 26, ponctuel: false},
  {etat: "P", description: nil, presence_id: 18, elefe_id: 27, ponctuel: false},
  {etat: "P", description: nil, presence_id: 18, elefe_id: 28, ponctuel: false},
  {etat: "P", description: nil, presence_id: 19, elefe_id: 9, ponctuel: false},
  {etat: "P", description: nil, presence_id: 19, elefe_id: 10, ponctuel: false},
  {etat: "P", description: nil, presence_id: 19, elefe_id: 11, ponctuel: false},
  {etat: "P", description: nil, presence_id: 19, elefe_id: 13, ponctuel: false},
  {etat: "P", description: nil, presence_id: 19, elefe_id: 14, ponctuel: false},
  {etat: "P", description: nil, presence_id: 19, elefe_id: 15, ponctuel: false},
  {etat: "P", description: nil, presence_id: 19, elefe_id: 16, ponctuel: false},
  {etat: "P", description: nil, presence_id: 19, elefe_id: 17, ponctuel: false},
  {etat: "P", description: nil, presence_id: 19, elefe_id: 18, ponctuel: false},
  {etat: "P", description: nil, presence_id: 19, elefe_id: 19, ponctuel: false},
  {etat: "P", description: nil, presence_id: 19, elefe_id: 20, ponctuel: false},
  {etat: "P", description: nil, presence_id: 19, elefe_id: 22, ponctuel: false},
  {etat: "A", description: nil, presence_id: 19, elefe_id: 23, ponctuel: false},
  {etat: "P", description: nil, presence_id: 19, elefe_id: 24, ponctuel: false},
  {etat: "A", description: nil, presence_id: 19, elefe_id: 25, ponctuel: true},
  {etat: "A", description: nil, presence_id: 19, elefe_id: 26, ponctuel: true},
  {etat: "P", description: nil, presence_id: 19, elefe_id: 27, ponctuel: false},
  {etat: "A", description: nil, presence_id: 19, elefe_id: 28, ponctuel: true},
  {etat: "P", description: nil, presence_id: 20, elefe_id: 5, ponctuel: false},
  {etat: "P", description: nil, presence_id: 20, elefe_id: 6, ponctuel: false},
  {etat: "P", description: nil, presence_id: 20, elefe_id: 8, ponctuel: false},
  {etat: "P", description: nil, presence_id: 20, elefe_id: 12, ponctuel: false},
  {etat: "P", description: nil, presence_id: 20, elefe_id: 21, ponctuel: false},
  {etat: "P", description: nil, presence_id: 20, elefe_id: 23, ponctuel: false},
  {etat: "P", description: nil, presence_id: 20, elefe_id: 29, ponctuel: false},
  {etat: "P", description: nil, presence_id: 20, elefe_id: 30, ponctuel: true},
  {etat: "P", description: nil, presence_id: 20, elefe_id: 31, ponctuel: true},
  {etat: "P", description: nil, presence_id: 20, elefe_id: 32, ponctuel: false},
  {etat: "P", description: nil, presence_id: 20, elefe_id: 33, ponctuel: false},
  {etat: "P", description: nil, presence_id: 20, elefe_id: 34, ponctuel: false},
  {etat: "P", description: nil, presence_id: 20, elefe_id: 35, ponctuel: false},
  {etat: "P", description: nil, presence_id: 20, elefe_id: 36, ponctuel: false},
  {etat: "P", description: nil, presence_id: 21, elefe_id: 5, ponctuel: false},
  {etat: "P", description: nil, presence_id: 21, elefe_id: 6, ponctuel: false},
  {etat: "P", description: nil, presence_id: 21, elefe_id: 8, ponctuel: false},
  {etat: "P", description: nil, presence_id: 21, elefe_id: 12, ponctuel: false},
  {etat: "P", description: nil, presence_id: 21, elefe_id: 21, ponctuel: false},
  {etat: "P", description: nil, presence_id: 21, elefe_id: 23, ponctuel: false},
  {etat: "P", description: nil, presence_id: 21, elefe_id: 29, ponctuel: false},
  {etat: "P", description: nil, presence_id: 21, elefe_id: 30, ponctuel: true},
  {etat: "P", description: nil, presence_id: 21, elefe_id: 31, ponctuel: true},
  {etat: "P", description: nil, presence_id: 21, elefe_id: 32, ponctuel: false},
  {etat: "P", description: nil, presence_id: 21, elefe_id: 33, ponctuel: false},
  {etat: "P", description: nil, presence_id: 21, elefe_id: 34, ponctuel: false},
  {etat: "P", description: nil, presence_id: 21, elefe_id: 35, ponctuel: false},
  {etat: "P", description: nil, presence_id: 21, elefe_id: 36, ponctuel: false},
  {etat: "P", description: nil, presence_id: 22, elefe_id: 5, ponctuel: false},
  {etat: "P", description: nil, presence_id: 22, elefe_id: 6, ponctuel: false},
  {etat: "P", description: nil, presence_id: 22, elefe_id: 8, ponctuel: false},
  {etat: "P", description: nil, presence_id: 22, elefe_id: 12, ponctuel: false},
  {etat: "P", description: nil, presence_id: 22, elefe_id: 21, ponctuel: false},
  {etat: "P", description: nil, presence_id: 22, elefe_id: 23, ponctuel: false},
  {etat: "P", description: nil, presence_id: 22, elefe_id: 29, ponctuel: false},
  {etat: "A", description: nil, presence_id: 22, elefe_id: 30, ponctuel: true},
  {etat: "P", description: nil, presence_id: 22, elefe_id: 31, ponctuel: true},
  {etat: "P", description: nil, presence_id: 22, elefe_id: 32, ponctuel: false},
  {etat: "P", description: nil, presence_id: 22, elefe_id: 33, ponctuel: false},
  {etat: "P", description: nil, presence_id: 22, elefe_id: 34, ponctuel: false},
  {etat: "P", description: nil, presence_id: 22, elefe_id: 35, ponctuel: false},
  {etat: "P", description: nil, presence_id: 22, elefe_id: 36, ponctuel: false},
  {etat: "P", description: nil, presence_id: 25, elefe_id: 5, ponctuel: false},
  {etat: "P", description: nil, presence_id: 25, elefe_id: 6, ponctuel: false},
  {etat: "P", description: nil, presence_id: 25, elefe_id: 8, ponctuel: false},
  {etat: "P", description: nil, presence_id: 25, elefe_id: 12, ponctuel: false},
  {etat: "P", description: nil, presence_id: 25, elefe_id: 21, ponctuel: false},
  {etat: "P", description: nil, presence_id: 25, elefe_id: 23, ponctuel: false},
  {etat: "P", description: nil, presence_id: 25, elefe_id: 29, ponctuel: false},
  {etat: "", description: nil, presence_id: 25, elefe_id: 30, ponctuel: false},
  {etat: "", description: nil, presence_id: 25, elefe_id: 31, ponctuel: false},
  {etat: "P", description: nil, presence_id: 25, elefe_id: 32, ponctuel: false},
  {etat: "P", description: nil, presence_id: 25, elefe_id: 33, ponctuel: false},
  {etat: "P", description: nil, presence_id: 25, elefe_id: 34, ponctuel: false},
  {etat: "P", description: nil, presence_id: 25, elefe_id: 35, ponctuel: false},
  {etat: "P", description: nil, presence_id: 25, elefe_id: 36, ponctuel: false},
  {etat: "P", description: nil, presence_id: 27, elefe_id: 5, ponctuel: false},
  {etat: "P", description: nil, presence_id: 27, elefe_id: 6, ponctuel: false},
  {etat: "P", description: nil, presence_id: 27, elefe_id: 8, ponctuel: false},
  {etat: "P", description: nil, presence_id: 27, elefe_id: 12, ponctuel: false},
  {etat: "P", description: nil, presence_id: 27, elefe_id: 21, ponctuel: false},
  {etat: "P", description: nil, presence_id: 27, elefe_id: 23, ponctuel: false},
  {etat: "P", description: nil, presence_id: 27, elefe_id: 29, ponctuel: false},
  {etat: "", description: nil, presence_id: 27, elefe_id: 30, ponctuel: false},
  {etat: "", description: nil, presence_id: 27, elefe_id: 31, ponctuel: false},
  {etat: "P", description: nil, presence_id: 27, elefe_id: 32, ponctuel: false},
  {etat: "P", description: nil, presence_id: 27, elefe_id: 33, ponctuel: false},
  {etat: "P", description: nil, presence_id: 27, elefe_id: 34, ponctuel: false},
  {etat: "A", description: nil, presence_id: 27, elefe_id: 35, ponctuel: false},
  {etat: "P", description: nil, presence_id: 27, elefe_id: 36, ponctuel: false},
  {etat: "P", description: nil, presence_id: 34, elefe_id: 5, ponctuel: false},
  {etat: "P", description: nil, presence_id: 34, elefe_id: 6, ponctuel: false},
  {etat: "P", description: nil, presence_id: 34, elefe_id: 8, ponctuel: false},
  {etat: "P", description: nil, presence_id: 34, elefe_id: 12, ponctuel: false},
  {etat: "P", description: nil, presence_id: 34, elefe_id: 21, ponctuel: false},
  {etat: "A", description: nil, presence_id: 34, elefe_id: 23, ponctuel: false},
  {etat: "P", description: nil, presence_id: 34, elefe_id: 29, ponctuel: false},
  {etat: "", description: nil, presence_id: 34, elefe_id: 30, ponctuel: false},
  {etat: "", description: nil, presence_id: 34, elefe_id: 31, ponctuel: false},
  {etat: "P", description: nil, presence_id: 34, elefe_id: 32, ponctuel: false},
  {etat: "P", description: nil, presence_id: 34, elefe_id: 33, ponctuel: false},
  {etat: "P", description: nil, presence_id: 34, elefe_id: 34, ponctuel: false},
  {etat: "P", description: nil, presence_id: 34, elefe_id: 35, ponctuel: false},
  {etat: "P", description: nil, presence_id: 34, elefe_id: 36, ponctuel: false},
  {etat: "P", description: nil, presence_id: 35, elefe_id: 5, ponctuel: false},
  {etat: "P", description: nil, presence_id: 35, elefe_id: 6, ponctuel: false},
  {etat: "P", description: nil, presence_id: 35, elefe_id: 8, ponctuel: false},
  {etat: "P", description: nil, presence_id: 35, elefe_id: 12, ponctuel: false},
  {etat: "P", description: nil, presence_id: 35, elefe_id: 21, ponctuel: false},
  {etat: "P", description: nil, presence_id: 35, elefe_id: 23, ponctuel: false},
  {etat: "P", description: nil, presence_id: 35, elefe_id: 29, ponctuel: false},
  {etat: "", description: nil, presence_id: 35, elefe_id: 30, ponctuel: false},
  {etat: "", description: nil, presence_id: 35, elefe_id: 31, ponctuel: false},
  {etat: "P", description: nil, presence_id: 35, elefe_id: 32, ponctuel: false},
  {etat: "P", description: nil, presence_id: 35, elefe_id: 33, ponctuel: false},
  {etat: "P", description: nil, presence_id: 35, elefe_id: 34, ponctuel: false},
  {etat: "P", description: nil, presence_id: 35, elefe_id: 35, ponctuel: false},
  {etat: "P", description: nil, presence_id: 35, elefe_id: 36, ponctuel: false},
  {etat: "P", description: nil, presence_id: 36, elefe_id: 5, ponctuel: false},
  {etat: "P", description: nil, presence_id: 36, elefe_id: 6, ponctuel: false},
  {etat: "P", description: nil, presence_id: 36, elefe_id: 8, ponctuel: false},
  {etat: "P", description: nil, presence_id: 36, elefe_id: 12, ponctuel: false},
  {etat: "P", description: nil, presence_id: 36, elefe_id: 21, ponctuel: false},
  {etat: "P", description: nil, presence_id: 36, elefe_id: 23, ponctuel: false},
  {etat: "P", description: nil, presence_id: 36, elefe_id: 29, ponctuel: false},
  {etat: "", description: nil, presence_id: 36, elefe_id: 30, ponctuel: false},
  {etat: "A", description: nil, presence_id: 36, elefe_id: 31, ponctuel: true},
  {etat: "P", description: nil, presence_id: 36, elefe_id: 32, ponctuel: false},
  {etat: "P", description: nil, presence_id: 36, elefe_id: 33, ponctuel: false},
  {etat: "P", description: nil, presence_id: 36, elefe_id: 34, ponctuel: false},
  {etat: "P", description: nil, presence_id: 36, elefe_id: 35, ponctuel: false},
  {etat: "P", description: nil, presence_id: 36, elefe_id: 36, ponctuel: false},
  {etat: "P", description: nil, presence_id: 37, elefe_id: 5, ponctuel: false},
  {etat: "P", description: nil, presence_id: 37, elefe_id: 6, ponctuel: false},
  {etat: "P", description: nil, presence_id: 37, elefe_id: 8, ponctuel: false},
  {etat: "P", description: nil, presence_id: 37, elefe_id: 12, ponctuel: false},
  {etat: "P", description: nil, presence_id: 37, elefe_id: 21, ponctuel: false},
  {etat: "A", description: nil, presence_id: 37, elefe_id: 23, ponctuel: false},
  {etat: "P", description: nil, presence_id: 37, elefe_id: 29, ponctuel: false},
  {etat: "", description: nil, presence_id: 37, elefe_id: 30, ponctuel: false},
  {etat: "", description: nil, presence_id: 37, elefe_id: 31, ponctuel: false},
  {etat: "P", description: nil, presence_id: 37, elefe_id: 32, ponctuel: false},
  {etat: "P", description: nil, presence_id: 37, elefe_id: 33, ponctuel: false},
  {etat: "P", description: nil, presence_id: 37, elefe_id: 34, ponctuel: false},
  {etat: "P", description: nil, presence_id: 37, elefe_id: 35, ponctuel: false},
  {etat: "P", description: nil, presence_id: 37, elefe_id: 36, ponctuel: false}
])
Paiement.create!([
  {montant: 190.0, mode_paie: 2, valide: true, user_id: 7},
  {montant: 190.0, mode_paie: 1, valide: true, user_id: 10},
  {montant: 140.0, mode_paie: 1, valide: false, user_id: 12},
  {montant: 140.0, mode_paie: 1, valide: false, user_id: 13},
  {montant: 140.0, mode_paie: 1, valide: false, user_id: 17},
  {montant: 235.0, mode_paie: 1, valide: true, user_id: 29}
])
Presence.create!([
  {datecours: "2017-09-20", etat: "", elefe_id: nil, cour_id: 8, enseignant_id: 5},
  {datecours: "2017-09-27", etat: "", elefe_id: nil, cour_id: 8, enseignant_id: 5},
  {datecours: "2017-10-04", etat: "", elefe_id: nil, cour_id: 8, enseignant_id: 5},
  {datecours: "2017-10-11", etat: "", elefe_id: nil, cour_id: 8, enseignant_id: 5},
  {datecours: "2017-10-18", etat: "", elefe_id: nil, cour_id: 8, enseignant_id: 10},
  {datecours: "2017-11-08", etat: "", elefe_id: nil, cour_id: 8, enseignant_id: 5},
  {datecours: "2017-11-15", etat: "", elefe_id: nil, cour_id: 8, enseignant_id: 5},
  {datecours: "2017-11-22", etat: "", elefe_id: nil, cour_id: 8, enseignant_id: 5},
  {datecours: "2017-11-29", etat: "", elefe_id: nil, cour_id: 8, enseignant_id: 5},
  {datecours: "2017-09-20", etat: "", elefe_id: nil, cour_id: 3, enseignant_id: 5},
  {datecours: "2017-09-27", etat: "", elefe_id: nil, cour_id: 3, enseignant_id: 5},
  {datecours: "2017-10-04", etat: "", elefe_id: nil, cour_id: 3, enseignant_id: 5},
  {datecours: "2017-11-08", etat: "", elefe_id: nil, cour_id: 3, enseignant_id: 5},
  {datecours: "2017-11-22", etat: "", elefe_id: nil, cour_id: 3, enseignant_id: 5},
  {datecours: "2017-11-29", etat: "", elefe_id: nil, cour_id: 3, enseignant_id: 5},
  {datecours: "2017-11-15", etat: "", elefe_id: nil, cour_id: 3, enseignant_id: 5},
  {datecours: "2017-10-11", etat: "", elefe_id: nil, cour_id: 3, enseignant_id: 5},
  {datecours: "2017-10-18", etat: "", elefe_id: nil, cour_id: 3, enseignant_id: 9}
])
Repasgcc.create!([
  {titre: "Repas du Grupo Cultura Capoeira", adresse: "Salle de fêtes Bourgon", date_repas: "2018-03-10", date_lim: "2018-02-15", repas1_enf: "Feijoada", r1e_tarif: 9.0, repas2_enf: "Jambon Chips", r2e_tarif: 9.0, repas1_ad: "Feijoada", r1a_tarif: 18.5, repas2_ad: "Feijoada végétarien", r2a_tarif: 18.5}
])
TicketRepa.create!([
  {qte1: 0, qte2: 1, qta1: 2, qta2: 0, elefe_id: 1, repasgcc_id: 1}
])

Elefe.find(1).cours << Cour.find(5)
Elefe.find(2).cours << Cour.find(7)
Elefe.find(3).cours << Cour.find(7)
Elefe.find(4).cours << Cour.find(7)
Elefe.find(5).cours << Cour.find(3)
Elefe.find(6).cours << Cour.find(3)
Elefe.find(7).cours << Cour.find(7)
Elefe.find(8).cours << Cour.find(3)
Elefe.find(9).cours << Cour.find(7)
Elefe.find(10).cours << Cour.find(8)
Elefe.find(11).cours << Cour.find(8)
Elefe.find(12).cours << Cour.find(3)
Elefe.find(13).cours << Cour.find(8)
Elefe.find(14).cours << Cour.find(8)
Elefe.find(15).cours << Cour.find(7)
Elefe.find(16).cours << Cour.find(8)
Elefe.find(17).cours << Cour.find(8)
Elefe.find(18).cours << Cour.find(8)
Elefe.find(19).cours << Cour.find(8)
Elefe.find(20).cours << Cour.find(8)
Elefe.find(21).cours << Cour.find(3)
Elefe.find(22).cours << Cour.find(8)
Elefe.find(23).cours << Cour.find(8)
Elefe.find(24).cours << Cour.find(8)
Elefe.find(9).cours << Cour.find(8)
Elefe.find(15).cours << Cour.find(8)
Elefe.find(27).cours << Cour.find(8)
Elefe.find(28).cours << Cour.find(8)
Elefe.find(26).cours << Cour.find(8)
Elefe.find(25).cours << Cour.find(8)
Elefe.find(29).cours << Cour.find(3)
Elefe.find(30).cours << Cour.find(3)
Elefe.find(31).cours << Cour.find(3)
Elefe.find(32).cours << Cour.find(3)
Elefe.find(33).cours << Cour.find(3)
Elefe.find(34).cours << Cour.find(3)
Elefe.find(35).cours << Cour.find(3)
Elefe.find(36).cours << Cour.find(3)
Elefe.find(23).cours << Cour.find(3)
Elefe.find(37).cours << Cour.find(7)
Elefe.find(38).cours << Cour.find(7)

Cour.find(5).eleves << Elefe.find(1)
Cour.find(7).eleves << Elefe.find(2)
Cour.find(7).eleves << Elefe.find(3)
Cour.find(7).eleves << Elefe.find(4)
Cour.find(7).eleves << Elefe.find(7)
Cour.find(7).eleves << Elefe.find(9)
Cour.find(7).eleves << Elefe.find(15)
Cour.find(7).eleves << Elefe.find(37)
Cour.find(7).eleves << Elefe.find(38)
Cour.find(3).eleves << Elefe.find(5)
Cour.find(3).eleves << Elefe.find(6)
Cour.find(3).eleves << Elefe.find(8)
Cour.find(3).eleves << Elefe.find(12)
Cour.find(3).eleves << Elefe.find(21)
Cour.find(3).eleves << Elefe.find(29)
Cour.find(3).eleves << Elefe.find(30)
Cour.find(3).eleves << Elefe.find(31)
Cour.find(3).eleves << Elefe.find(32)
Cour.find(3).eleves << Elefe.find(33)
Cour.find(3).eleves << Elefe.find(34)
Cour.find(3).eleves << Elefe.find(35)
Cour.find(3).eleves << Elefe.find(36)
Cour.find(3).eleves << Elefe.find(23)
Cour.find(8).eleves << Elefe.find(10)
Cour.find(8).eleves << Elefe.find(11)
Cour.find(8).eleves << Elefe.find(13)
Cour.find(8).eleves << Elefe.find(14)
Cour.find(8).eleves << Elefe.find(16)
Cour.find(8).eleves << Elefe.find(17)
Cour.find(8).eleves << Elefe.find(18)
Cour.find(8).eleves << Elefe.find(19)
Cour.find(8).eleves << Elefe.find(20)
Cour.find(8).eleves << Elefe.find(22)
Cour.find(8).eleves << Elefe.find(23)
Cour.find(8).eleves << Elefe.find(24)
Cour.find(8).eleves << Elefe.find(9)
Cour.find(8).eleves << Elefe.find(15)
Cour.find(8).eleves << Elefe.find(27)
Cour.find(8).eleves << Elefe.find(28)
Cour.find(8).eleves << Elefe.find(26)
Cour.find(8).eleves << Elefe.find(25)
