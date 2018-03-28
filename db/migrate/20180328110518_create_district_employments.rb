class CreateDistrictEmployments < ActiveRecord::Migration[5.1]
  def change
    create_table :district_employments do |t|
      t.string :school_name
      t.string :school_nces
      t.text :school_street_address
      t.string :school_state
      t.string :school_city
      t.string :school_zipcode
      t.string :school_position
      t.string :school_grade
      t.string :school_subject
      t.string :school_date_service_from
      t.string :school_date_service_to
      t.string :school_contract_year
      t.string :school_employment_status
      t.string :school_hour_rate
      t.string :school_certificate_service
      t.string :school_reemployment
      t.integer :district_id

      t.timestamps
    end
  end
end
