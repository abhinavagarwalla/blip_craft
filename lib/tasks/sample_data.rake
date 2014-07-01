namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    Course.create!(name: "Example User",
                 description: "Just a tutorial",
                 broad_category: "Tutorial",
                 narrow_category: "Tutorial",
                 no_std_enrolled: '0',
                 )
    50.times do |n|
      name  = Faker::Name.name
      description = "Just a Tutorial - #{n+1}"
      broad_category = "Tutorial"
      narrow_category = "Tutorial"
      no_std_enrolled = "#{n+1}"
      Course.create!(name: name,
                   description: description,
                   broad_category: broad_category,
                   narrow_category: narrow_category,
                   no_std_enrolled: no_std_enrolled)
    end
  end
end
