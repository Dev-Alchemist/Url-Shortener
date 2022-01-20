require "rails_helper"

RSpec.describe Url, :type => :model do
  context "with valid long_url" do
    it "new Url record is created" do
      url = Url.create(long_url: 'https://www.tuko.co.ke/407310-the-top-15-expensive-nike-shoes-world-ranked.html')

      expect(Url.count).to eq(1)
    end
  end

  context "with invalid long_url" do
    it "new Url record is not created" do
      url = Url.create(long_url: 'tuko')

      expect(Url.count).to eq(0)
    end
  end

end