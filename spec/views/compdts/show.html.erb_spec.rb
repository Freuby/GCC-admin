require 'rails_helper'

RSpec.describe "compdts/show", type: :view do
  before(:each) do
    @compdt = assign(:compdt, Compdt.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Couleur/)
    expect(rendered).to match(/Taille/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Nom/)
    expect(rendered).to match(/Prenom/)
    expect(rendered).to match(/Rue/)
    expect(rendered).to match(/Cp/)
    expect(rendered).to match(/Ville/)
  end
end
