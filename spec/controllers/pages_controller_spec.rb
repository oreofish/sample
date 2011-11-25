require 'spec_helper'

describe PagesController do
  render_views
  
  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end

    it "should have the right title" do
      get 'home'
      # have_selector is for test element in HTML.
      # :content should contain substring like "ROR Sample..."
      response.should have_selector("title", :content => "ROR Sample | Home")
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'contact'
      # have_selector is for test element in HTML.
      # :content should contain substring like "ROR Sample..."
      response.should have_selector("title", :content => "ROR Sample | Contact")
    end
  end

  describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'help'
      # have_selector is for test element in HTML.
      # :content should contain substring like "ROR Sample..."
      response.should have_selector("title", :content => "ROR Sample | Help")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'about'
      # have_selector is for test element in HTML.
      # :content should contain substring like "ROR Sample..."
      response.should have_selector("title", :content => "ROR Sample | About")
    end
  end
  
end
