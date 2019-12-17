require "rails_helper"

RSpec.describe OutBreaksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/out_breaks").to route_to("out_breaks#index")
    end

    it "routes to #show" do
      expect(:get => "/out_breaks/1").to route_to("out_breaks#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/out_breaks").to route_to("out_breaks#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/out_breaks/1").to route_to("out_breaks#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/out_breaks/1").to route_to("out_breaks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/out_breaks/1").to route_to("out_breaks#destroy", :id => "1")
    end
  end
end
