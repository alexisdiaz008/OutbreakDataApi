require 'rails_helper'

RSpec.describe "OutBreaks", type: :request do

	  let(:valid_attributes) {
    {
      report_date: Date.new(2001,12),
      state: "Florida",
      primary_mode: "person-to-person",
      etiology: "Norovirus Genogroup II",
      serotype_or_genotype: "confirmed",
      etiology_status: "Norovirus Genogroup II",
      setting: "Diner",
      illnesses: 33,
      hospitalizations: 11,
      deaths: 2
    }
  }

  let(:invalid_attributes) {
    {
    	report_date: "Date.new(2001,12)",
      state: 1231,
      primary_mode: 123,
      etiology: 123,
      serotype_or_genotype: 123,
      etiology_status: 123, 
      setting: 123,
      illnesses: "33",
      hospitalizations: "11",
      deaths: "2"
    }
  }

  before do 
  	@outbreak = FactoryBot.create(:out_break)
  end

  describe "GET /out_breaks" do
    it "returns OutBreak#index" do
      get out_breaks_path
      expect(response).to have_http_status(200)
    end
  end

  describe "GET OutBreak#show" do
    it "returns 200 with an existing object id" do
      get out_break_path(@outbreak)
      expect(response).to have_http_status(200)
    end
  end

  describe "POST OutBreak#create" do
    it "returns 201 with valid attributes" do
      post out_breaks_path({out_break: valid_attributes})
      expect(response).to have_http_status(201)
    end
  end

  describe "POST OutBreak#update" do
    it "returns 200 with valid attributes" do
      put out_break_path({out_break: valid_attributes, id: @outbreak.id})
      expect(response).to have_http_status(200)
    end
  end


  describe "DELETE /out_breaks/:id" do
    it "returns OutBreak#destroy" do
      delete out_break_path(@outbreak)
      expect(response).to have_http_status(204)
    end
  end

end
