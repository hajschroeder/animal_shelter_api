class AnimalsContreoller < ApplicationController

  def index
    @animals = Animal.all
    json_response(@animals)
  end

  def show 
    @animal = Animal.find(params[:id])
    json_response(@animal)
  end

  def create 
    @animal = Animal.create!(animal_params)
    json_response(@animal. :created)
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
    @animal.destroy
  end

  private 

  def animal_params
    params.permit(:name, :breed, :age)
  end
end
