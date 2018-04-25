class PoodlesController < ApplicationController
  def index
    @poodles = Poodle.all
    # render json: poodles.as_json
    render 'index.html.erb'
  end

  def show
    @poodle = Poodle.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def new
  end

  def create
    poodle = Poodle.new(name: params[:the_name], breed: params[:breed], age: params[:age], color: params[:color])
    poodle.save
    redirect_to "/poodles"
  end

  def edit
    # shows a form with info from the poodle you're editing
    # get info about the poodle i want to edit
    @poodle = Poodle.find_by(id: params[:id])
    # show the form
  end

  def update
    # grab the poodle
    poodle = Poodle.find_by(id: params[:id])
    # update the poodle
    poodle.update(name: params[:the_name], breed: params[:breed], age: params[:age], color: params[:color])
    redirect_to "/poodles/#{@poodle.id}"
  end

  def destroy
    poodle = Poodle.find_by(id: params[:id])
    poodle.destroy
    redirect_to "/poodles"
  end
end
