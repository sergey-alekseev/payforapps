require 'spec_helper'

describe StaticPagesController do

  describe "GET 'profile'" do
    it "returns http success" do
      get 'profile'
      response.should be_success
    end
  end

  describe "GET 'dashboard'" do
    it "returns http success" do
      get 'dashboard'
      response.should be_success
    end
  end

  describe "GET 'add'" do
    it "returns http success" do
      get 'add'
      response.should be_success
    end
  end

  describe "GET 'purchases'" do
    it "returns http success" do
      get 'purchases'
      response.should be_success
    end
  end

  describe "GET 'thankyou'" do
    it "returns http success" do
      get 'thankyou'
      response.should be_success
    end
  end

  describe "GET 'error'" do
    it "returns http success" do
      get 'error'
      response.should be_success
    end
  end

  describe "GET 'paypal'" do
    it "returns http success" do
      get 'paypal'
      response.should be_success
    end
  end

  describe "GET 'purchaseorder'" do
    it "returns http success" do
      get 'purchaseorder'
      response.should be_success
    end
  end

  describe "GET 'settings'" do
    it "returns http success" do
      get 'settings'
      response.should be_success
    end
  end

  describe "GET 'buyitlink'" do
    it "returns http success" do
      get 'buyitlink'
      response.should be_success
    end
  end

end
