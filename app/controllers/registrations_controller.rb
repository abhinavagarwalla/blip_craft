class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    super
    user = User.where(email: params[:user][:email]).first

    if user.type_id
    	user.students.create!()
    else
    	user.teachers.create!()
    end

  end

  def update
    super
  end
  
=begin
  def after_sign_up_path_for(resource)
    user = User.where(email: params[:user][:email]).first
    std_record = user.students.first
    tcr_record = user.teachers.first

    
    puts "                 \n\n  hi  \n\n\n"
    puts std_record
    puts tcr_record

    if std_record != nil
      "/students/#{std_record.id}"
    else
      "/teachers/#{tcr_record.id}"
    end

  end
=end
end 