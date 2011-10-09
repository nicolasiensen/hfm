class RemoveTypeFromInsurances < ActiveRecord::Migration
  def up
    remove_column :insurances, :type
  end

  def down
    add_column :insurances, :type, :string
  end
end
