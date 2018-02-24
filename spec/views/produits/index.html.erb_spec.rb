require 'rails_helper'

RSpec.describe "produits/index", type: :view do
  before(:each) do
    assign(:produits, [
      Produit.create!(
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
      ),
      Produit.create!(
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
      )
    ])
  end

  it "renders a list of produits" do
    render
    assert_select "tr>td", :text => "Ref".to_s, :count => 2
    assert_select "tr>td", :text => "Nom".to_s, :count => 2
    assert_select "tr>td", :text => "Couleur".to_s, :count => 2
    assert_select "tr>td", :text => "Marque".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => "Descriptif".to_s, :count => 2
    assert_select "tr>td", :text => "Caract0".to_s, :count => 2
    assert_select "tr>td", :text => "Attr0".to_s, :count => 2
    assert_select "tr>td", :text => "Caract1".to_s, :count => 2
    assert_select "tr>td", :text => "Attr1".to_s, :count => 2
    assert_select "tr>td", :text => "Caract2".to_s, :count => 2
    assert_select "tr>td", :text => "Attr2".to_s, :count => 2
    assert_select "tr>td", :text => "Caract3".to_s, :count => 2
    assert_select "tr>td", :text => "Attr3".to_s, :count => 2
    assert_select "tr>td", :text => "Caract4".to_s, :count => 2
    assert_select "tr>td", :text => "Attr4".to_s, :count => 2
    assert_select "tr>td", :text => "Caract5".to_s, :count => 2
    assert_select "tr>td", :text => "Attr5".to_s, :count => 2
    assert_select "tr>td", :text => "Caract6".to_s, :count => 2
    assert_select "tr>td", :text => "Attr6".to_s, :count => 2
    assert_select "tr>td", :text => "Caract7".to_s, :count => 2
    assert_select "tr>td", :text => "Attr7".to_s, :count => 2
    assert_select "tr>td", :text => "Caract8".to_s, :count => 2
    assert_select "tr>td", :text => "Attr8".to_s, :count => 2
    assert_select "tr>td", :text => "Caract9".to_s, :count => 2
    assert_select "tr>td", :text => "Attr9".to_s, :count => 2
  end
end
