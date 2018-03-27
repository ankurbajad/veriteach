class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
     	t.string :name
     	t.text   :social_security
     	t.string :email
     	t.string :contact_number
     	t.string :salary_inclusion
     	t.string :document_retrieval
     	t.string :terms_condition
     	t.string :electronic_signature
      t.timestamps
    end
  end
end
