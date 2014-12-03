require "rails_helper"
require 'shoulda/matchers'

describe ListsController do
	it "should get page for lists" do

	    #simulate a 'get' request on our ListsController
	    #hit the 'index' method
	    get :index

	    #staus code returned should be 200 for success
	    expect(response).to have_http_status(:success)

	    #check that the index view was rendered
	    expect(response).to render_template(:index)
	end

	it "should get an object from db" do

	    # kick off a get request
	    get :index

	    # simply test that this controller will assign an 
	    # @lists object for our view
	    assigns(:lists).should_not be_nil
    end
end