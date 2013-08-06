class ObservationsController < ApplicationController
    before_filter :fetch_observation, :only => [:show, ]
  def create
      @observation = Observation.new(observation_params)
      if @observation.save
          render :json => @observation
      else
          render :new
      end
  end

  def index
      @observations = Observation.all
  end

  def show
  end

  private

  def observation_params
      # params.require("observation").permit(:observation_number)
      params.require(:observation).permit!
  end

  def fetch_observation
      @observation = Observation.find(params[:id])
  end
end
