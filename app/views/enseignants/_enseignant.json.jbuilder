json.extract! enseignant, :id, :nom, :prenom, :graduation, :created_at, :updated_at
json.url enseignant_url(enseignant, format: :json)
