class AddElectronicSignatureToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :electronic_signature, :string
  end
end
