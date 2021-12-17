class ActivitiesController < ApplicationController

    def index 
        render json: Activity.all, status: :ok
    end

    def destroy 
        activity = Activity.find(params[:id])
        activity.destroy 
        head :no_content 
    end

end
