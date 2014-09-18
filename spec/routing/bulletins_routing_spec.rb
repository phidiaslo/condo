require "rails_helper"

RSpec.describe BulletinsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/bulletins").to route_to("bulletins#index")
    end

    it "routes to #new" do
      expect(:get => "/bulletins/new").to route_to("bulletins#new")
    end

    it "routes to #show" do
      expect(:get => "/bulletins/1").to route_to("bulletins#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/bulletins/1/edit").to route_to("bulletins#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/bulletins").to route_to("bulletins#create")
    end

    it "routes to #update" do
      expect(:put => "/bulletins/1").to route_to("bulletins#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bulletins/1").to route_to("bulletins#destroy", :id => "1")
    end

  end
end
