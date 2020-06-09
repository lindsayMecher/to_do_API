class UsersController < ApplicationController
    def index 
        users = User.all 
        render json: users
    end 

    def show
        user = User.find_by(id: params[:id])
        render json: user
    end

    def create
        user = User.create(email: params[:email], password: params[:password])
        render json: user
    end

    def update
        user = User.find_by(id: params[:id])
        user.update(email: params[:email], password: params[:password], first_name: params[:first_name], last_name: params[:last_name])
        render json: user
    end
end
