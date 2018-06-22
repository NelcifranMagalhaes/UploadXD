class AddFileTxtToManagers < ActiveRecord::Migration
  def change
    add_column :managers, :file_txt, :string
  end
end
