class CreateInsurances < ActiveRecord::Migration
  def change
    create_table :insurances do |t|
      t.integer :client_id
      t.string :type
      t.integer :company_id
      t.decimal :value
      t.float :commission
      t.boolean :renovation
      t.boolean :endorsement
      t.decimal :income
      t.date :start_at
      t.date :end_at

      t.timestamps
    end
  end
end
