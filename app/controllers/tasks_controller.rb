class TasksController < ApplicationController

    def index 
        tasks = Task.all 
        render json: tasks 
    end

    def create 
        task = Task.new(task_params)
        if task.save 
            render json: task 
        else 
            render json: {message: "Could not create task"}
        end 
    end

    def show 
        task = Task.find_by(id: params[:id])
        if task 
            render json: task, include: [:user]
        else 
            render json: {message: "Task does not exist"}
        end
    end

    def edit 
    
    end

    def update
    
    end

    def destroy 

    end

    private 

    def task_params 
        parmas.require(:task).permit(:activity, :user_id)
    end
end
