class WelcomeController < ApplicationController
  require 'open-uri'
  require 'nokogiri'

  def find_headline
    doc = Nokogiri::HTML(open("https://www.washingtonpost.com/"))
    @headline = doc.css('.headline a').first.text
  end
end
