require 'spec_helper'

describe "Static pages" do
  
    describe "Home page" do

        it "should have the h1 'Catapult Office Hours'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Catapult Office Hours')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Catapult Office Hours")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "Help")
    end
  end
end
