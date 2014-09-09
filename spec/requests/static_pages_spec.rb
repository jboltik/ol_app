require 'spec_helper'

describe "StaticPages" do
  
  describe "Home Page" do
   
    it "should have the h1 'WELCOME!'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'WELCOME!')
    end
  
    it "should have the base title" do
    	visit '/static_pages/home'
    	page.should have_selector('title', 
    						:text => "OOLAA CARE PACKAGES")
    end
    
    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => ' | HOME')
    end
  end

  describe "Story Page" do
   
    it "should have the h1 'FOUNDING STORY'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/story'
      page.should have_selector('h1', :text => 'FOUNDING STORY')
    end
  
    it "should have the base title" do
    	visit '/static_pages/story'
    	page.should have_selector('title', 
    						:text => "OOLAA CARE PACKAGES")
    end

    it "should not have a custom page title" do
      visit '/static_pages/story'
      page.should_not have_selector('title', :text => ' | STORY')
    end
  end

  describe "Box Page" do
   
    it "should have the h1 'OOLAA BOXES'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/box'
      page.should have_selector('h1', :text => 'OOLAA BOXES')
    end

    it "should have the base title" do
    	visit '/static_pages/box'
    	page.should have_selector('title', 
    						:text => "OOLAA CARE PACKAGES")
    end

    it "should not have a custom page title" do
      visit '/static_pages/box'
      page.should_not have_selector('title', :text => ' | BOX')
    end
  end
end 
