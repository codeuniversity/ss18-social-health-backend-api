require 'rails_helper'

RSpec.describe "ClusterUserReferences", type: :request do
  describe "GET /cluster_user_references" do
    it "works! (now write some real specs)" do
      get cluster_user_references_path
      expect(response).to have_http_status(200)
    end
  end
end
