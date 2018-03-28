class CreateDistrictInsurances < ActiveRecord::Migration[5.1]
  def change
    create_table :district_insurances do |t|
      t.string :insurance_day
      t.string :insurance_from
      t.string :insurance_to
      t.string :health_state_insurance
      t.string :insurance_option
      t.string :hmp
      t.string :hdp
      t.string :family_coverage
      t.string :tenure_status
      t.integer :district_id

      t.timestamps
    end
  end
end
