require "rails_helper"

RSpec.describe Url, :type => :model do
  context "with valid long_url" do
    it "generate shortcode" do
      url = Url.create(long_url: 'https://www.tuko.co.ke/407310-the-top-15-expensive-nike-shoes-world-ranked.html')

      expect(url.short_code).not_to be_nil
    end
  end

  context "with invalid long_url" do
    it "sanitize url" do
      url = Url.create(long_url: 'https://www.tuko.co.ke/407310-the-top-15-expensive-nike-shoes-world-ranked.html')

      expect(url.long_url).to eq('https://www.tuko.co.ke/407310-the-top-15-expensive-nike-shoes-world-ranked.html')
    end
  end

end