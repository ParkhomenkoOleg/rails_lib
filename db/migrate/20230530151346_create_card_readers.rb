class CreateCardReaders < ActiveRecord::Migration[7.0]
  def change
    create_table :card_readers do |t|
      t.string :name_book
      t.string :date_taking_book


      t.references :user

      t.timestamps
    end
  end
end
