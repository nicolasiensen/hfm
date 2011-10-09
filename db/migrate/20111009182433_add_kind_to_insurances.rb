class AddKindToInsurances < ActiveRecord::Migration
  def change
    add_column :insurances, :kind, :string
  end
end
