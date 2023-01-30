class DogsController < ApplicationController
  def index
    @dogs = Dog.all
    render :index
  end

  def create
    @dog = Dog.create(
      name: params[:name],
      age: params[:age],
      breed: params[:breed],
    )
    render :show
  end
end
