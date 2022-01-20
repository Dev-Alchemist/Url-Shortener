# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'redirect to url', type: :system do
  let!(:url) { Url.create(long_url: 'https://www.tuko.co.ke/407310-the-top-15-expensive-nike-shoes-world-ranked.html') }

  scenario 'valid short code' do
    visit redirect_path(shortcode: url.short_code)

    expect(current_url).to eq "#{url.long_url}/"
  end

  scenario 'invalid short code' do
    visit redirect_path(shortcode: '123456')

    expect(page).to have_content('Short Url Not Found')
  end
end
