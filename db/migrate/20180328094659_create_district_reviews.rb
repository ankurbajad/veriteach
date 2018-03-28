class CreateDistrictReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :district_reviews do |t|
      t.string :review
      t.integer :district_id

      t.timestamps
    end
  end
end
