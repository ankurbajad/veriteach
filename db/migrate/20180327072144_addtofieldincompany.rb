class Addtofieldincompany < ActiveRecord::Migration[5.1]
  def change
  	add_column :companies, :email_verify_code, :string
  end
end
