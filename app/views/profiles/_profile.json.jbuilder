json.extract! profile, :id, :name, :sex, :age, :orientation, :about_me, :work_education, :location, :height, :health, :vices, :pets, :children, :religion, :politics, :starsign, :looking_for, :created_at, :updated_at
json.url profile_url(profile, format: :json)
