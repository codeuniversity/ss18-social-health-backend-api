require "rails_helper"

RSpec.describe ClustersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/clusters").to route_to("clusters#index")
    end


    it "routes to #show" do
      expect(:get => "/clusters/1").to route_to("clusters#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/clusters").to route_to("clusters#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/clusters/1").to route_to("clusters#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/clusters/1").to route_to("clusters#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/clusters/1").to route_to("clusters#destroy", :id => "1")
    end

  end
end
