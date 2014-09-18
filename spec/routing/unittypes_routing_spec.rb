require "rails_helper"

RSpec.describe UnittypesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/unittypes").to route_to("unittypes#index")
    end

    it "routes to #new" do
      expect(:get => "/unittypes/new").to route_to("unittypes#new")
    end

    it "routes to #show" do
      expect(:get => "/unittypes/1").to route_to("unittypes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/unittypes/1/edit").to route_to("unittypes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/unittypes").to route_to("unittypes#create")
    end

    it "routes to #update" do
      expect(:put => "/unittypes/1").to route_to("unittypes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/unittypes/1").to route_to("unittypes#destroy", :id => "1")
    end

  end
end
