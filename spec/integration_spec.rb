require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe 'adding a new employee', {:type => :feature} do
  it('allows a manager to click a list to see the employees and division information') do
    visit '/'
    click_link('Add a new employee')
    fill_in('name', :with => 'Dr. Funkhauser')
    click_button('Add')
    expect(page).to have_content('Dr. Funkhauser')
  end
end

describe('viewing all of the list', {:type => :feature}) do
  it('allows a manager to see all of the divisions that have been created') do
    division = Division.create ({:title => 'HR'})
    visit('/')
    click_link('View all divisions')
    expect(page).to have_content(division.title)
  end
end

describe('seeing details for a single division', {:type => :feature}) do
  it('allows a manager to click a division to see the employees and detaisl for it') do
    test_division = Division.create ({:title => 'lab'})
    test_employee = Employee.create ({:name => "Dr. Funkhauser", :division_id => test_division.id()})
    visit('/division')
    click_link(test_division.id())
    expect(page).to have_content(test_employee.name())
  end
end
