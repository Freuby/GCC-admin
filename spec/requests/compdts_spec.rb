require 'rails_helper'

RSpec.describe "Compdts", type: :request do
  describe "GET /compdts" do
    it "works! (now write some real specs)" do
      get compdts_path
      expect(response).to have_http_status(200)
    end
  end
end
