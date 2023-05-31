require 'csv'
class Library < ApplicationRecord
  has_many :books
  has_many :card_readers


  def self.to_csv
    libraries = all
    CSV.generate do |csv|
      csv << column_names
      libraries.each do |libraries|
        csv << libraries.attributes.values_at(*column_names)
      end
    end
  end
end
