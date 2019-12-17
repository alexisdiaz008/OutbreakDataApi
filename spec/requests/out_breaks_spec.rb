require 'rails_helper'

RSpec.describe "OutBreaks", type: :request do
  describe "GET /out_breaks" do
    it "works! (now write some real specs)" do
      get out_breaks_path
      expect(response).to have_http_status(200)
    end
  end
end
