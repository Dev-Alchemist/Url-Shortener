# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'show analytics page', type: :system do
  let!(:url) { Url.create(long_url: 'https://www.tuko.co.ke/407310-the-top-15-expensive-nike-shoes-world-ranked.html') }

  feature 'with valid short code' do
    scenario 'when no hit' do
      visit stat_path(shortcode: url.short_code)

      expect(page).to have_content('Total visits')
      expect(page).to have_content('Total Unique visits')
    end

    scenario 'when one hit' do
      visit redirect_path(shortcode: url.short_code)
      visit stat_path(shortcode: url.short_code)

      expect(page).to have_content('Total visits: 1')
      expect(page).to have_content('Total Unique visits: 1')
    end
  end
end
