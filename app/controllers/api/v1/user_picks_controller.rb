class Api::V1::UserPicksController < ApplicationController
    def index
        render json: UserPick.all
    end
end