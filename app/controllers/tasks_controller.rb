class TasksController < ApplicationController

    def index 
        tasks = Task.all 
        render json: tasks 
    end

    def show 
        task = Task.find_by(id: params[:id])
        if task 
            render json: task, include: [:user]
        else 
            render json: {message: "Task does not exist"}
        end
    end
end
