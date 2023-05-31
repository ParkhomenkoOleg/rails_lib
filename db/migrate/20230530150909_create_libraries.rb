class CreateLibraries < ActiveRecord::Migration[7.0]
  def change
    create_table :libraries do |t|
      t.string :name
      t.string :address
      t.string :year_of_creation

      t.references :books, :card_readers

      t.timestamps
    end
  end
end
