class PeopleController < ApplicationController

  def index
    @people = Person.all
    render :json => @people
    respond_to do |format|
      format.html
      format.json
    end
  end

  def create
    # binding.pry
    @person = Person.new(name: params[:name], favoriteCity: params[:favoriteCity])
    @person.save
    redirect_to person_path(@person)
  end

  def show
  end

  def update
  end

  def destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

private
  def person_params
    params.require(:person).permit(:name, :favoriteCity)
  end
end
