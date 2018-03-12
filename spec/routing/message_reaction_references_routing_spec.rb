require "rails_helper"

RSpec.describe MessageReactionReferencesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/message_reaction_references").to route_to("message_reaction_references#index")
    end


    it "routes to #show" do
      expect(:get => "/message_reaction_references/1").to route_to("message_reaction_references#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/message_reaction_references").to route_to("message_reaction_references#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/message_reaction_references/1").to route_to("message_reaction_references#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/message_reaction_references/1").to route_to("message_reaction_references#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/message_reaction_references/1").to route_to("message_reaction_references#destroy", :id => "1")
    end

  end
end
