class AddManagerIdToRelatory < ActiveRecord::Migration
  def change
  	add_column :relatories, :manager_id, :integer
  end
end
