require "rails_helper"

RSpec.describe ClusterUserReferencesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cluster_user_references").to route_to("cluster_user_references#index")
    end


    it "routes to #show" do
      expect(:get => "/cluster_user_references/1").to route_to("cluster_user_references#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/cluster_user_references").to route_to("cluster_user_references#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/cluster_user_references/1").to route_to("cluster_user_references#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/cluster_user_references/1").to route_to("cluster_user_references#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cluster_user_references/1").to route_to("cluster_user_references#destroy", :id => "1")
    end

  end
end
