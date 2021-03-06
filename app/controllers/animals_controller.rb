class AnimalsController < ApplicationController

  def index
    @animals = Animal.all.paginate(page: params[:page], per_page: 5)
    json_response(@animals)
  end

  def show 
    @animal = Animal.find(params[:id])
    json_response(@animal)
  end

  def create 
    @animal = Animal.create!(animal_params)
    json_response(@animal, :created)
  end

  def update
    @animal = Animal.find(params[:id])
    if @animal.update!(animal_params)
      render status: 200, json: {
        message: "Animal is successfully in the shelter!"
      }
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    if @animal.destroy!
      render status: 200, json: {
        message: "Animal has been deleted"
      }
    end
  end

  private 

  def animal_params
    params.permit(:species, :name, :breed, :age)
  end
end
