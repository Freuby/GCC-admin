require 'rails_helper'

RSpec.describe "produits/show", type: :view do
  before(:each) do
    @produit = assign(:produit, Produit.create!(
      :ref => "Ref",
      :nom => "Nom",
      :couleur => "Couleur",
      :marque => "Marque",
      :prix => 2.5,
      :dispo => false,
      :delai => 3,
      :typ_livr => 4,
      :tar_livr => 5.5,
      :del_livr => 6,
      :descriptif => "Descriptif",
      :caract0 => "Caract0",
      :attr0 => "Attr0",
      :caract1 => "Caract1",
      :attr1 => "Attr1",
      :caract2 => "Caract2",
      :attr2 => "Attr2",
      :caract3 => "Caract3",
      :attr3 => "Attr3",
      :caract4 => "Caract4",
      :attr4 => "Attr4",
      :caract5 => "Caract5",
      :attr5 => "Attr5",
      :caract6 => "Caract6",
      :attr6 => "Attr6",
      :caract7 => "Caract7",
      :attr7 => "Attr7",
      :caract8 => "Caract8",
      :attr8 => "Attr8",
      :caract9 => "Caract9",
      :attr9 => "Attr9"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Ref/)
    expect(rendered).to match(/Nom/)
    expect(rendered).to match(/Couleur/)
    expect(rendered).to match(/Marque/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5.5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/Descriptif/)
    expect(rendered).to match(/Caract0/)
    expect(rendered).to match(/Attr0/)
    expect(rendered).to match(/Caract1/)
    expect(rendered).to match(/Attr1/)
    expect(rendered).to match(/Caract2/)
    expect(rendered).to match(/Attr2/)
    expect(rendered).to match(/Caract3/)
    expect(rendered).to match(/Attr3/)
    expect(rendered).to match(/Caract4/)
    expect(rendered).to match(/Attr4/)
    expect(rendered).to match(/Caract5/)
    expect(rendered).to match(/Attr5/)
    expect(rendered).to match(/Caract6/)
    expect(rendered).to match(/Attr6/)
    expect(rendered).to match(/Caract7/)
    expect(rendered).to match(/Attr7/)
    expect(rendered).to match(/Caract8/)
    expect(rendered).to match(/Attr8/)
    expect(rendered).to match(/Caract9/)
    expect(rendered).to match(/Attr9/)
  end
end
