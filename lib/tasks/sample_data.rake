namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    make_courses
    make_relationships
  end
end

def make_users

  puts " \n\n Hello i am from make_users   \n\n"
  User.create!(email: "dafodils@gmail.com",password: "foobar123", 
    password_confirmation: "foobar123", type_id: "true")
  User.create!(email: "dafodilt@gmail.com",password: "foobar123", 
    password_confirmation: "foobar123", type_id: "false")

  user = User.find(1)
  user.students.create!(name: "Mr Example STD")
  user = User.find(2)
  user.teachers.create!(name: "Mr Example TCR")

  50.times do |n|
      name  = Faker::Name.name
      email = "dafodil#{n}@gmail.com"
      password = "foobar123"
      password_confirmation = "foobar123"
      if n%2==0
        type_id = "true"
      else
        type_id = "false"
      end
      user = User.create!(email: email, password: password,
       password_confirmation: password_confirmation, type_id: type_id)

      if type_id == "true"
        user.students.create!(name: name)
      else
        user.teachers.create!(name: name)
      end
    end

    puts " \n\n Hello i am from make_users   \n\n"
end

def make_courses
  teacher = Teacher.find(2)
 teacher.courses.create!(name: "Example User",
                 description: "Just a tutorial",
                 broad_category: "Tutorial",
                 narrow_category: "Tutorial",
                 no_std_enrolled: '0',
                 )
    puts " \n\n Hello i am from make_courses   \n\n"
    50.times do |n|
      name  = Faker::Name.name
      description = "Just a Tutorial - #{n+1}"
      broad_category = "Tutorial"
      narrow_category = "Tutorial"
      no_std_enrolled = "#{n+1}"
      teacher.courses.create!(name: name,
                   description: description,
                   broad_category: broad_category,
                   narrow_category: narrow_category,
                   no_std_enrolled: no_std_enrolled
                   )


    course = teacher.courses.find(n+1)
    #try also course = Course.find(n+1)- both work
    course.cvideos.create!(v_link: "https://www.youtube.com/watch?v=5dbEhBKGOtY", v_desc: "David Guetta - Play Hard" , video_id: 1)
    course.cvideos.create!(v_link: "https://www.youtube.com/watch?v=5dbEhBKGOtY", v_desc: "David Guetta - Play Hard" , video_id: 2)
    end
    puts " \n\n Hello i am from make_courses   \n\n"
end


def make_relationships
  puts " \n\n Hello i am from make_realtionships   \n\n"
  students = Student.all
  student  = students.first

  courses = Course.all
  course = courses.first
  senders = courses[2..50]
  receivers      = students[3..40]
  senders.each { |course_to_enroll| student.enroll!(course_to_enroll) }
  receivers.each      { |student_enrolling| student_enrolling.enroll!(course) }
end