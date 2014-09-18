require 'rails_helper'

RSpec.describe "Unittypes", :type => :request do
  describe "GET /unittypes" do
    it "works! (now write some real specs)" do
      get unittypes_path
      expect(response.status).to be(200)
    end
  end
end
