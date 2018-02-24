require "rails_helper"

RSpec.describe CompdtsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/compdts").to route_to("compdts#index")
    end

    it "routes to #new" do
      expect(:get => "/compdts/new").to route_to("compdts#new")
    end

    it "routes to #show" do
      expect(:get => "/compdts/1").to route_to("compdts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/compdts/1/edit").to route_to("compdts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/compdts").to route_to("compdts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/compdts/1").to route_to("compdts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/compdts/1").to route_to("compdts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/compdts/1").to route_to("compdts#destroy", :id => "1")
    end

  end
end
