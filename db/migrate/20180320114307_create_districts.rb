class CreateDistricts < ActiveRecord::Migration[5.1]
  def change
    create_table :districts do |t|
      t.string :name
      t.string :nces
      t.string :contact
      t.string :email
      t.string :phone_number
      t.text   :street_address
      t.string :state
      t.string :city
      t.string :zip_code
      t.integer :user_id
      t.timestamps
    end
  end
end
