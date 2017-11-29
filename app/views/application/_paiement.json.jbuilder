json.extract! paiement, :id, :montant, :mode_paie, :valid, :created_at, :updated_at, :user_id
json.url cour_url(paiement, format: :json)