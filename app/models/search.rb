class Search < ApplicationRecord
    def search_profiles
        profiles = Profile.all

        profiles = profiles.where(["name LIKE ?","%#{name}%"]) if name.present?
        profiles = profiles.where(["sex LIKE ?","%#{sex}%"]) if sex.present?
        profiles = profiles.where(["orientation LIKE ?","%#{orientation}%"]) if orientation.present?
        profiles = profiles.where(["about_me LIKE ?","%#{about_me}%"]) if about_me.present?
        profiles = profiles.where(["work_education LIKE ?","%#{work_education}%"]) if work_education.present?
        profiles = profiles.where(["location LIKE ?","%#{location}%"]) if location.present?
        profiles = profiles.where(["looking_for LIKE ?","%#{looking_for}%"]) if looking_for.present?

        return profiles
    end
end
