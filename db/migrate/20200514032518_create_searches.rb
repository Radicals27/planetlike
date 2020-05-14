class CreateSearches < ActiveRecord::Migration[6.0]
  def change
    create_table :searches do |t|
      t.string :name
      t.string :sex
      t.string :orientation
      t.string :about_me
      t.string :work_education
      t.integer :height
      t.string :location
      t.string :looking_for

      t.timestamps
    end
  end
end
