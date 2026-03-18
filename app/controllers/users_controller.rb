class UsersController < ApplicationController

def create
  user = User.new(user_params)
  binding.pry
  user.save!
  render json: user
end

def show 
  binding.pry
  users = User.all
  render json: users
end

def index
    binding.pry
  user = User.find_by(id: params[:id])
  # user.update(user_params)
  render json: user
end

def delete
  user = User.find_by(id: params[:id])
  user.destroy
  render json: User.all
end


def edit
  binding.pry
  user = User.find_by(id: params[:id])
  user.update(user_params)
  user.save
end

private

def user_params
  permitted = params.require(:user).permit(
    :email,
    :contact_number,
    :address,
    :firstName,
    :lastName
  )

  {
    first_name: permitted[:firstName],
    last_name: permitted[:lastName],
    email: permitted[:email],
    contact_number: permitted[:contact_number],
    address: permitted[:address]
  }
end

  
end
