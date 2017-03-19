class PeopleController < ApplicationController

  def index
  end

  def new
  end

  def create
    # binding.pry
    @person = Person.new(name: params[:name], favoriteCity: params[:favoriteCity])
    @person.save
    redirect_to person_path(@person)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

private
  def person_params
    params.require(:person).permit(:name, :favoriteCity)
  end
end
