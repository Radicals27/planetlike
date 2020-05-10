class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :sex
      t.integer :age
      t.string :about_me
      t.string :work_education
      t.string :location
      t.string :height
      t.string :health
      t.string :vices
      t.string :pets
      t.string :children
      t.string :religion
      t.string :politics
      t.string :starsign
      t.string :looking_for

      t.timestamps
    end
  end
end
