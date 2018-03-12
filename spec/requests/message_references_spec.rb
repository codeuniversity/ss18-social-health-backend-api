require 'rails_helper'

RSpec.describe "MessageReferences", type: :request do
  describe "GET /message_references" do
    it "works! (now write some real specs)" do
      get message_references_path
      expect(response).to have_http_status(200)
    end
  end
end
