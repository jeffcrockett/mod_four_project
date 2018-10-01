

class Api::V1::PicksController < ApplicationController
  skip_before_action :authorized, only: [:index, :update]
  before_action :find_pick, only: [:update]
  
  def index
    @picks = Pick.all
    render json: @picks
  end

  def create
    render json: Pick.create(pick_params)
  end

  def update
    @pick.update(pick_params)
    if @pick.save
      render json: @pick, status: :accepted
    else
      render json: { errors: @pick.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def pick_params
    params.permit(:id, :date, :restaurant_id, :restaurant_name, :user_id, :votes, :confirmed)
  end

  def find_pick
    @pick = Pick.find(params[:id])
  end
end
