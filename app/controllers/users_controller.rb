class UsersController < ApplicationController

    def index 
        users = User.all 
        render json: users, except: [:created_at, :updated_at],  include: [:tasks]
    end

    def create 
        binding.pry
        user = User.find_or_create_by(user_params)
        if user.valid?
            render json: user 
        else 
            render json: {message: "Could not create User."}
        end 
    end

    def show 
        user = User.find_by(id: params[:id])
        if user 
            render json: user, except: [:created_at, :updated_at], include: [:tasks]
        else
            render json: {message: "This user does not exist"}
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :email)
    end
end
