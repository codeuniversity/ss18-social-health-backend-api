require 'rails_helper'

RSpec.describe "ChatbotContents", type: :request do
  describe "GET /chatbot_contents" do
    it "works! (now write some real specs)" do
      get chatbot_contents_path
      expect(response).to have_http_status(200)
    end
  end
end
