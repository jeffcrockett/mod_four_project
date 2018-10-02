class Api::V1::CommentsController < ApplicationController
    skip_before_action :authorized, only: [:index, :create, :update]
    # wrap_parameters :comment, include: [:content, :user_id, :pick_id]
    # before_action :get_comment, only: [:show, :updat:destroy]
    
    def index
        render json: Comment.all
    end

    def show
        render json: Comment.find(params[:id])
    end

    def create
        render json: Comment.create(comment_params)
    end

    def update
        @comment = Comment.find(params[:id]).update(comment_params)
        if @comment.save
            render json: @comment, status: :accepted
        else
            render json: { errors: @comment.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def destroy 
        render json: Comment.find(params[:id]).destroy 
    end

    private 
    
    def comment_params 
        byebug
        params.require(:comment).permit(:content, :user_id, :pick_id)
    end

    def get_comment
        @comment = Comment.find(params[:id])
    end
end
