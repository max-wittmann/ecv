require 'spec_helper'

describe "StaticPages" do
  subject {page}

  describe "should have header" do
    before { visit root_path }
    it {should have_selector(:id, 'header')}
  end

  describe "should have footer" do
    before { visit root_path }
    it {should have_selector(:id, 'footer')}
  end

  describe "basic pages" do
    it "should have default name (by default)" do
      visit home_path
      should have_content("Default Name")
    end
    it "should have about page with title" do
      visit about_path
      should have_title("About")
    end
  end

  #checkPageExists("about", about_path)

end

#private
#def checkPageExists(name, path)
#  describe "should have " + name + " page" do
#    before { visit path }
#
#    describe "should have '" + name + "' title" do
#      it {should have_title(name)}
#    end
#  end
#end
