class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :contact_name
      t.string :email
      t.string :phone_number
      t.string :street_address
      t.string :state
      t.string :city
      t.string :zip_code
      t.text   :comments
      t.integer :employee_id
      t.timestamps
    end
  end
end
