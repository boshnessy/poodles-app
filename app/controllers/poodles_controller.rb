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

end
