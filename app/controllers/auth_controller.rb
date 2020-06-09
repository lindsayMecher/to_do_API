class AuthController < ApplicationController

    def show
        user = User.find_by(id: params[:id])
        render json: user
    end

    def create
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            render json: user, status: 200
        else 
            render json: {error: "invalid credentials"}, status: 401
        end
        
    end
end

