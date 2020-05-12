class AddOrientationToProfile < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :orientation, :string
  end
end
