require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'adding a new word', {:type => :feature} do
  it('allows a user to add a word to the word list') do
    visit '/'
    fill_in('name', :with => 'Tulip')
    click_button('Go!')
    expect(page).to have_content('Tulip')
  end
end

describe('seeing definitions for a word', {:type => :feature}) do
  it('allows a user to click a word to see the defintions for it') do
    visit '/'
    fill_in('name', :with => 'Senorita')
    click_button('Go!')
    click_link('Senorita')
    fill_in('definition', :with => 'a pretty looking lady')
    click_button('Define!')
    expect(page).to have_content('a pretty looking lady')
  end
end

describe 'looking at list of words', {:type => :feature} do
  it('allows a user to view word list') do
    visit '/'
    fill_in('name', :with => 'Tulip')
    click_button('Go!')
    fill_in('name', :with => 'Poop')
    click_button('Go!')
    expect(page).to have_content('Poop')
  end
end
