class UsersController < ApplicationController

    def index 
        users = User.all 
        render json: users, except: [:created_at, :updated_at], include: [:tasks]
    end

    def show 
        user = User.find_by(id: params[:id])
        if user 
            render json: user, except: [:created_at, :updated_at], include: [:tasks]
        else
            render json: {message: "This user does not exist"}
        end
    end
end
