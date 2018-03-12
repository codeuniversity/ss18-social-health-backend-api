require "rails_helper"

RSpec.describe ChatbotContentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/chatbot_contents").to route_to("chatbot_contents#index")
    end


    it "routes to #show" do
      expect(:get => "/chatbot_contents/1").to route_to("chatbot_contents#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/chatbot_contents").to route_to("chatbot_contents#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/chatbot_contents/1").to route_to("chatbot_contents#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/chatbot_contents/1").to route_to("chatbot_contents#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/chatbot_contents/1").to route_to("chatbot_contents#destroy", :id => "1")
    end

  end
end
