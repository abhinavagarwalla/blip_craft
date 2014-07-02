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

    course = Course.find(1)
    course.cvideos.create!(v_link: "https://www.youtube.com/watch?v=5dbEhBKGOtY", v_desc: "David Guetta - Play Hard" , video_id: 1)
    course.cvideos.create!(v_link: "https://www.youtube.com/watch?v=5dbEhBKGOtY", v_desc: "David Guetta - Play Hard" , video_id: 2)

    course2 = Course.find(2)
    course2.cvideos.create!(v_link: "https://www.youtube.com/watch?v=5dbEhBKGOtY", v_desc: "David Guetta - Play Hard" , video_id: 1)
    course2.cvideos.create!(v_link: "https://www.youtube.com/watch?v=5dbEhBKGOtY", v_desc: "David Guetta - Play Hard" , video_id: 2)


  end
end
