require 'rails_helper'

RSpec.describe "compdts/edit", type: :view do
  before(:each) do
    @compdt = assign(:compdt, Compdt.create!(
      :qte => 1,
      :couleur => "MyString",
      :taille => "MyString",
      :typ_livr => 1,
      :vill_collect => 1,
      :nom => "MyString",
      :prenom => "MyString",
      :rue => "MyString",
      :cp => "MyString",
      :ville => "MyString"
    ))
  end

  it "renders the edit compdt form" do
    render

    assert_select "form[action=?][method=?]", compdt_path(@compdt), "post" do

      assert_select "input#compdt_qte[name=?]", "compdt[qte]"

      assert_select "input#compdt_couleur[name=?]", "compdt[couleur]"

      assert_select "input#compdt_taille[name=?]", "compdt[taille]"

      assert_select "input#compdt_typ_livr[name=?]", "compdt[typ_livr]"

      assert_select "input#compdt_vill_collect[name=?]", "compdt[vill_collect]"

      assert_select "input#compdt_nom[name=?]", "compdt[nom]"

      assert_select "input#compdt_prenom[name=?]", "compdt[prenom]"

      assert_select "input#compdt_rue[name=?]", "compdt[rue]"

      assert_select "input#compdt_cp[name=?]", "compdt[cp]"

      assert_select "input#compdt_ville[name=?]", "compdt[ville]"
    end
  end
end
