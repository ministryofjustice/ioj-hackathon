require 'rails_helper'

RSpec.describe "Appeals", type: :request do
  describe "GET /appeals" do
    it "works! (now write some real specs)" do
      get appeals_path
      expect(response).to have_http_status(200)
    end
  end
end
