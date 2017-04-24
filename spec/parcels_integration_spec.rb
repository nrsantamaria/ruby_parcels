require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the parcels path', {:type => :feature}) do
  it('process the users entries and outputs a cost to ship') do
    visit('/')
    fill_in('height', :with => 2)
    fill_in('width', :with => 4)
    fill_in('length', :with => 5)
    fill_in('weight', :with => 10)
    fill_in('speed', :with => 5)
    fill_in('distance', :with => 50)
    click_button('Submit')
    expect(page).to have_content('12')
  end
end
