require 'rails_helper'

RSpec.describe "produits/edit", type: :view do
  before(:each) do
    @produit = assign(:produit, Produit.create!(
      :ref => "MyString",
      :nom => "MyString",
      :couleur => "MyString",
      :marque => "MyString",
      :prix => 1.5,
      :dispo => false,
      :delai => 1,
      :typ_livr => 1,
      :tar_livr => 1.5,
      :del_livr => 1,
      :descriptif => "MyString",
      :caract0 => "MyString",
      :attr0 => "MyString",
      :caract1 => "MyString",
      :attr1 => "MyString",
      :caract2 => "MyString",
      :attr2 => "MyString",
      :caract3 => "MyString",
      :attr3 => "MyString",
      :caract4 => "MyString",
      :attr4 => "MyString",
      :caract5 => "MyString",
      :attr5 => "MyString",
      :caract6 => "MyString",
      :attr6 => "MyString",
      :caract7 => "MyString",
      :attr7 => "MyString",
      :caract8 => "MyString",
      :attr8 => "MyString",
      :caract9 => "MyString",
      :attr9 => "MyString"
    ))
  end

  it "renders the edit produit form" do
    render

    assert_select "form[action=?][method=?]", produit_path(@produit), "post" do

      assert_select "input#produit_ref[name=?]", "produit[ref]"

      assert_select "input#produit_nom[name=?]", "produit[nom]"

      assert_select "input#produit_couleur[name=?]", "produit[couleur]"

      assert_select "input#produit_marque[name=?]", "produit[marque]"

      assert_select "input#produit_prix[name=?]", "produit[prix]"

      assert_select "input#produit_dispo[name=?]", "produit[dispo]"

      assert_select "input#produit_delai[name=?]", "produit[delai]"

      assert_select "input#produit_typ_livr[name=?]", "produit[typ_livr]"

      assert_select "input#produit_tar_livr[name=?]", "produit[tar_livr]"

      assert_select "input#produit_del_livr[name=?]", "produit[del_livr]"

      assert_select "input#produit_descriptif[name=?]", "produit[descriptif]"

      assert_select "input#produit_caract0[name=?]", "produit[caract0]"

      assert_select "input#produit_attr0[name=?]", "produit[attr0]"

      assert_select "input#produit_caract1[name=?]", "produit[caract1]"

      assert_select "input#produit_attr1[name=?]", "produit[attr1]"

      assert_select "input#produit_caract2[name=?]", "produit[caract2]"

      assert_select "input#produit_attr2[name=?]", "produit[attr2]"

      assert_select "input#produit_caract3[name=?]", "produit[caract3]"

      assert_select "input#produit_attr3[name=?]", "produit[attr3]"

      assert_select "input#produit_caract4[name=?]", "produit[caract4]"

      assert_select "input#produit_attr4[name=?]", "produit[attr4]"

      assert_select "input#produit_caract5[name=?]", "produit[caract5]"

      assert_select "input#produit_attr5[name=?]", "produit[attr5]"

      assert_select "input#produit_caract6[name=?]", "produit[caract6]"

      assert_select "input#produit_attr6[name=?]", "produit[attr6]"

      assert_select "input#produit_caract7[name=?]", "produit[caract7]"

      assert_select "input#produit_attr7[name=?]", "produit[attr7]"

      assert_select "input#produit_caract8[name=?]", "produit[caract8]"

      assert_select "input#produit_attr8[name=?]", "produit[attr8]"

      assert_select "input#produit_caract9[name=?]", "produit[caract9]"

      assert_select "input#produit_attr9[name=?]", "produit[attr9]"
    end
  end
end
