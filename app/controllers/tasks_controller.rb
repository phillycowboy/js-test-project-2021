class TasksController < ApplicationController

    before_action :find_task, only: [:show, :update, :destroy]

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
    # your edit action is your frontend
    end

    def update
        task = Task.find_by(id: params[:id])
        binding.pry
        if task && task.update(task_params)
            render json: {task: task}
        else 
            render json: {error: task.errors}
        end
    end

    def destroy 
        task = Task.find_by(id: params[:id])
        binding.pry
        if task
            task.destroy
            render json: {task: task}
        else 
            render json: {error: "Task could not be deleted."}
        end
    end

    private 

    def task_params 
        params.require(:task).permit(:activity, :user_id)
    end

    def find_task 
        task = Task.find_by(id: params[:id])
    end
end
