require "rails_helper"

RSpec.describe PostGraduationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/post_graduations").to route_to("post_graduations#index")
    end

    it "routes to #new" do
      expect(:get => "/post_graduations/new").to route_to("post_graduations#new")
    end

    it "routes to #show" do
      expect(:get => "/post_graduations/1").to route_to("post_graduations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/post_graduations/1/edit").to route_to("post_graduations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/post_graduations").to route_to("post_graduations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/post_graduations/1").to route_to("post_graduations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/post_graduations/1").to route_to("post_graduations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/post_graduations/1").to route_to("post_graduations#destroy", :id => "1")
    end

  end
end
