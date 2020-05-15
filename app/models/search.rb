class Search < ApplicationRecord
    def search_profiles
        profiles = Profile.all

        profiles = profiles.where(["name ILIKE ?","%#{name}%"]) if name.present?
        profiles = profiles.where(["age >= ?", min_age]) if min_age.present?
        profiles = profiles.where(["age <= ?", max_age]) if max_age.present?
        profiles = profiles.where(["sex LIKE ?","%#{sex}%"]) if sex.present?
        profiles = profiles.where(["orientation ILIKE ?","%#{orientation}%"]) if orientation.present?
        profiles = profiles.where(["about_me ILIKE ?","%#{about_me}%"]) if about_me.present?
        profiles = profiles.where(["work_education ILIKE ?","%#{work_education}%"]) if work_education.present?
        profiles = profiles.where(["location ILIKE ?","%#{location}%"]) if location.present?
        profiles = profiles.where(["looking_for ILIKE ?","%#{looking_for}%"]) if looking_for.present?

        return profiles
    end
end
