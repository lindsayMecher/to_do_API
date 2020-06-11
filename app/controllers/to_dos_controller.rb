class ToDosController < ApplicationController

    def index
        to_dos = ToDo.all.order("created_at DESC")
        render json: to_dos
    end

    def show
        to_do = ToDo.find_by(id: params[:id])
        render json: to_do
    end

    def create
        to_do = ToDo.create(user_id: params[:user_id], title: params[:title], body: params[:body], importance: params[:importance])
        render json: to_do
    end



end
