require 'rails_helper'

RSpec.describe "MessageReactions", type: :request do
  describe "GET /message_reactions" do
    it "works! (now write some real specs)" do
      get message_reactions_path
      expect(response).to have_http_status(200)
    end
  end
end
