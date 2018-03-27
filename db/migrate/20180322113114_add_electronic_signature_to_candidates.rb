class AddElectronicSignatureToCandidates < ActiveRecord::Migration[5.1]
  def change
  	add_column :candidates, :electronic_signature, :string
  end
end
