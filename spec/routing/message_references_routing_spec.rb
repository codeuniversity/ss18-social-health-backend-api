require "rails_helper"

RSpec.describe MessageReferencesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/message_references").to route_to("message_references#index")
    end


    it "routes to #show" do
      expect(:get => "/message_references/1").to route_to("message_references#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/message_references").to route_to("message_references#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/message_references/1").to route_to("message_references#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/message_references/1").to route_to("message_references#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/message_references/1").to route_to("message_references#destroy", :id => "1")
    end

  end
end
