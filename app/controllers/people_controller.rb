class PeopleController < ApplicationController
  layout "people"
  def index
    @msg = "Person Data."
    @data = Person.all
  end
  def show
    @msg = "Indexed Data."
    @data = Person.find(params[:id])
  end
  def add
    @msg = "add new data"
    @person = Person.new
  end
  def create
    @person = Person.new person_params
    if @person.save
      redirect_to "/people"
    else
      render "add"
    end
  end
  def edit
    @msg = "edit data.[id = " + params[:id] + "]"
    @person = Person.find(params[:id])
  end
  def update
    obj = Person.find(params[:id])
    obj.update(person_params)
    redirect_to '/people'
  end
  def delete
    obj = Person.find(params[:id])
    obj.destroy
    redirect_to '/people'
  end
  def find
    @msg = 'please type search word...'
    @people = Array.new
    if request.post? then
      @people = Person.where("name LIKE ? AND age BETWEEN ? AND ?",
                  "%" + params["name"] + "%",params["age1"],params["age2"]).order("age")
    end
  end
private
  def person_params
    params.require(:person).permit(:name,:age,:mail)
  end
end
