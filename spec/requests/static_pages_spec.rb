require 'spec_helper'

describe "StaticPages" do
  
    describe "Home Page" do
        it "should have the h1 sample app" do
            visit root_path
            page.should have_selector('h1', :text => 'Sample App')
        end
        it "should have the base title" do
            visit root_path
            page.should have_selector('title', :text => 'Ruby on Rails Sample App')
        end
        it "should not have a custom title" do
            visit root_path
            page.should_not have_selector('title', :text => 'Home')
        end
    end
    
    describe "Help Page" do
        it "should have the h1 help" do
            visit help_path
            page.should have_selector('h1', :text => 'Help')
        end
        it "should have the title 'help'" do
            visit help_path
            page.should have_selector('title', :text => 'Help')
        end
    end
    
    describe "About Page" do
        it "should have the h1 'about us'" do
            visit about_path
            page.should have_selector('h1', :text => 'About Us')
        end
        it "should have the title 'about us'" do
            visit about_path
            page.should have_selector('title', :text => 'About Us')
        end
    end

    describe "Contact Page" do
      it "should have the h1 'contact" do
        visit contact_path
        page.should have_selector('h1', text: 'Contact')
      end
      
      it "should have title 'contact" do
        visit contact_path
        page.should have_selector('title', text: "Contact")
      end
    end


end
