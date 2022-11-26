class TasksController < ApplicationController
    def index
        render json: Task.all
    end

    def create 
        task = Task.create(task_params)
        render json: task
    end
    
    def update
        task = Task.find(params[:id])
        task.update(task_params)
        render json: task
    end

    def destroy
        task = Task.find(params[:id])
        Task.destroy(params[:id])
        render json: ({ :DestroyedTask => task }) 
    end

    private def task_params
        params.require(:task).permit(:name, :description, :is_completed)
    end
end
