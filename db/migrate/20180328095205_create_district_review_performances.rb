class CreateDistrictReviewPerformances < ActiveRecord::Migration[5.1]
  def change
    create_table :district_review_performances do |t|
      t.string :school_name
      t.string :school_rating
      t.string :school_from
      t.string :school_to
      t.integer :district_review_id

      t.timestamps
    end
  end
end
