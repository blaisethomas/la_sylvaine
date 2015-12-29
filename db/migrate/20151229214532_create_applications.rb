class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :parent_first_name
      t.string :parent_last_name
      t.string :email
      t.string :telephone
      t.string :child_first_name
      t.string :child_dob
      t.string :school
      t.string :class
      t.string :dance_level
      t.string :location

      t.timestamps null: false
    end
  end
end
