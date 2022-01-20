# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'create url', type: :system do
  scenario 'empty long_url' do
    visit root_path
    click_button 'Shorten Url'

    expect(page).to have_content("Long url can't be blank")

    expect(Url.count).to eq(0)
  end

  scenario 'invalid long_url' do
    visit root_path
    fill_in 'Long Url:', with: 'httpstuko'
    click_button 'Shorten Url'

    expect(page).to have_content('Long url is invalid')

    expect(Url.count).to eq(0)
  end
end
