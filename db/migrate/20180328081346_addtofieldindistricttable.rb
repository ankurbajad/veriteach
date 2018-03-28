class Addtofieldindistricttable < ActiveRecord::Migration[5.1]
  def change
  	add_column :districts, :institution_type, :string
  	add_column :districts, :regional_accrededation_agency, :string
  	add_column :districts, :state_of_accrededation, :string
  	add_column :districts, :accrededation_start, :string
  	add_column :districts, :accrededation_end, :string
  end
end
