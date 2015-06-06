class RemoveContinentColumn < ActiveRecord::Migration
  def change
    remove_column :countries, :continent
  end
end