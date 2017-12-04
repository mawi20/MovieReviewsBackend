require 'rails_helper'

RSpec.describe "Movies", type: :request do
  describe "GET /movies" do
    it "works! (now write some real specs)" do
      get movies_path
      expect(response).to have_http_status(200)
    end
  end
end

RSpec.describe "Movies", type: :request do
  describe "PATCH /movies" do
    it "works! (now write some real specs)" do
      patch movies_path
      expect(response).to have_http_status(200)
    end
  end
end
