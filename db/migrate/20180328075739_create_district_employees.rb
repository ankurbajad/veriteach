class CreateDistrictEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :district_employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :job_title
      t.string :phone_number
      t.string :email_verify_code
      t.string :electronic_signature
      t.integer :district_id
      t.timestamps
    end
  end
end
