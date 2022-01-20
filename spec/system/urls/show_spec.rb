# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'redirect show short url page', type: :system do
  scenario 'valid long_url' do
    visit root_path
    fill_in 'Long Url:', with: 'http://www.test.com'
    click_button 'Shorten Url'

    expect(page).to have_content('Shortened Url')
    expect(page).to have_content('Copy')

    expect(Url.count).to eq(1)
  end
end
