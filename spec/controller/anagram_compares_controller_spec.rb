require 'rails_helper'

RSpec.describe AnagramComparesController, :type => :controller do

  describe "GET index" do
  	it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end

  describe "GET new" do
    it "The variable must be and Object of AnagramCompare class" do
    	get :new
    	expect(response).to be_success	
    end
  end
 end