#require 'rspec'
require 'spec_helper'

=begin
def testForSection (page, name)
  #subject { page }
  it 'should have ' + name + ' section' do
    #should have_selector(:class, name)
    #expect(page).to have_selector('div', id: name)
    page.should have_css('div.' + name)
  end
end
=end

def testForSection (name)
  it 'should have ' + name + ' section' do
    should have_css('div.' + name)
  end
end

describe 'Main CV page', type: :feature do
  subject { page }

  describe 'should have correct sections' do
    subject { page }

    before { visit root_path }

    #it 'should have education section' do
    #  page.should have_css('div.education')
    #end

    testForSection 'introduction'
    testForSection 'education'
    testForSection 'previous_experience'
    testForSection 'skills'
    testForSection 'projects'
    testForSection 'references'

  end

end