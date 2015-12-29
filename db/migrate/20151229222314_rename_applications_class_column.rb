class RenameApplicationsClassColumn < ActiveRecord::Migration
  def change
  	rename_column :applications, :class, :child_class
  end
end
