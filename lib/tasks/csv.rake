require 'csv'
require 'faker'

task csv: [:environment] do
  CSV.foreach(("libraries_7.csv"), headers: false, col_sep: ",") do |row|
    lib_name = row[3]
    lib_location = row[11]
    lib_street_address = row[4]
    lib_city = row[5]
    lib_year = row[2]

    library = Library.new(name: lib_name, year_of_creation: lib_year, address: lib_location, city: lib_city, street_address: lib_street_address)
    library.save
  end
end