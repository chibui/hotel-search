class CreateHotels < ActiveRecord::Migration[5.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :street
      t.string :suburb
      t.string :state
      t.string :postcode
      t.string :country

      t.timestamps
    end
  end
end
