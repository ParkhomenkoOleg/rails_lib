class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :description
      t.string :publication_year

      t.references :authors, :genres, :library

      t.timestamps
    end
  end
end
