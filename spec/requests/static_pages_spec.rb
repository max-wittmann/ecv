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

  describe "main page" do
    before { visit root_path }

    describe "should have default name (by default)" do
    it {should have_content("Default Name")}
    end

  end

end
