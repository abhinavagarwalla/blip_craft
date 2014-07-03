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
end 