class Profile < ApplicationRecord
    has_one_attached :picture
    belongs_to :user

    def self.search(search)
        if search
            where(["name LIKE ?", "%#{search}%"])
        else
            all
        end
    end
end
