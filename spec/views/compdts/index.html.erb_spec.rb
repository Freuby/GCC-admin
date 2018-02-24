require 'rails_helper'

RSpec.describe "compdts/index", type: :view do
  before(:each) do
    assign(:compdts, [
      Compdt.create!(
        :qte => 2,
        :couleur => "Couleur",
        :taille => "Taille",
        :typ_livr => 3,
        :vill_collect => 4,
        :nom => "Nom",
        :prenom => "Prenom",
        :rue => "Rue",
        :cp => "Cp",
        :ville => "Ville"
      ),
      Compdt.create!(
        :qte => 2,
        :couleur => "Couleur",
        :taille => "Taille",
        :typ_livr => 3,
        :vill_collect => 4,
        :nom => "Nom",
        :prenom => "Prenom",
        :rue => "Rue",
        :cp => "Cp",
        :ville => "Ville"
      )
    ])
  end

  it "renders a list of compdts" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Couleur".to_s, :count => 2
    assert_select "tr>td", :text => "Taille".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Nom".to_s, :count => 2
    assert_select "tr>td", :text => "Prenom".to_s, :count => 2
    assert_select "tr>td", :text => "Rue".to_s, :count => 2
    assert_select "tr>td", :text => "Cp".to_s, :count => 2
    assert_select "tr>td", :text => "Ville".to_s, :count => 2
  end
end
