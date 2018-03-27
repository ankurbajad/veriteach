class AddCandidateIdToDistricts < ActiveRecord::Migration[5.1]
  def change
  	add_column :districts, :candidate_id, :integer
  end
end
