class AddUserToProfiles < ActiveRecord::Migration[6.0]
  def change
    add_reference :profiles, :user, optional: true, foreign_key: true
  end
end
