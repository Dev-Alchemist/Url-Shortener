require "rails_helper"

RSpec.describe Shortener do
  
  it "shortens a url to a 7 character code" do
    url = "https://myinterviewtest.com/giga/new-client"
    shortener = Shortener.new(url)
    expect(shortener.url_code.length).to eq(7) 
    end

  it "assigns unique url string" do
      url = "https://myinterviewtest.com/giga/new-client"
      shortener = Shortener.new(url)
      code_1 = shortener.url_code

      url = "https://myinterviewtest.com/giga/old-client"
      shortener = Shortener.new(url)
      code_2 = shortener.url_code

      expect(code_2).not_to eq(code_1)
    end

    it "always gives the same URL the same url_code" do
      url = "https://myinterviewtest.com/giga/new-client"
      shortener = Shortener.new(url)
      url_code_1 = shortener.url_code

      url = "https://myinterviewtest.com/giga/new-client"
      shortener = Shortener.new(url)
      url_code_2 = shortener.url_code

      expect(url_code_1).to eq(url_code_2)

    end
end