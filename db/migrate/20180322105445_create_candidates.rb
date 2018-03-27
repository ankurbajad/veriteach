class CreateCandidates < ActiveRecord::Migration[5.1]
  def change
    create_table :candidates do |t|
      t.string :user_name
      t.string :social_security
      t.string :date_of_birth
      t.text   :street_address
      t.string :state
      t.string :city
      t.string :zip_code
      t.string :email
      t.timestamps
    end
  end
end
