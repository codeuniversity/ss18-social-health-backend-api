require "rails_helper"

RSpec.describe MessageReactionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/message_reactions").to route_to("message_reactions#index")
    end


    it "routes to #show" do
      expect(:get => "/message_reactions/1").to route_to("message_reactions#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/message_reactions").to route_to("message_reactions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/message_reactions/1").to route_to("message_reactions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/message_reactions/1").to route_to("message_reactions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/message_reactions/1").to route_to("message_reactions#destroy", :id => "1")
    end

  end
end
