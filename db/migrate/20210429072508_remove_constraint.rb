class RemoveConstraint < ActiveRecord::Migration[5.2]
  def change
    remove_index :locations, :city
  end
end
