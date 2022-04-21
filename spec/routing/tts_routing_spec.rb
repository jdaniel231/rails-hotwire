require "rails_helper"

RSpec.describe TtsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/tts").to route_to("tts#index")
    end

    it "routes to #new" do
      expect(get: "/tts/new").to route_to("tts#new")
    end

    it "routes to #show" do
      expect(get: "/tts/1").to route_to("tts#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/tts/1/edit").to route_to("tts#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/tts").to route_to("tts#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/tts/1").to route_to("tts#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/tts/1").to route_to("tts#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/tts/1").to route_to("tts#destroy", id: "1")
    end
  end
end
