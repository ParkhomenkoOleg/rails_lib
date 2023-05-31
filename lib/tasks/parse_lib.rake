require 'nokogiri'
require 'open-uri'
require 'faker'

task parse_library: [:environment] do
  doc = Nokogiri::HTML(URI.open('https://en.wikipedia.org/wiki/List_of_libraries'))
  doc.css('main .vector-body .mw-body-content .mw-parser-output ul li a').each do |a|
    lib_name = a.content
    lib_year = Faker::Date.between(from: '2000-01-01', to: '2010-12-12')
    lib_address = Faker::Address.city

    library = Library.new(name: lib_name, year_of_creation: lib_year, address: lib_address)
    library.save
  end
end

