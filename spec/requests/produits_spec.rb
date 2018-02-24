require 'rails_helper'

RSpec.describe "Produits", type: :request do
  describe "GET /produits" do
    it "works! (now write some real specs)" do
      get produits_path
      expect(response).to have_http_status(200)
    end
  end
end
