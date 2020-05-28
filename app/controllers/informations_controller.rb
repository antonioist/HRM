class InformationsController < ApplicationController
  before_action :set_information, only: [:edit,:update]
  def new
    @information = Infornation.new
  end

  def create
    @information = Information.new(information_params)
    if @information.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @information.update
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def set_information
    @information = Infornation.find(params[:id])
  end

  def information_params
    params.require(:information).permit(:location, :first_name, :last_name, :gender, :age, :cover_letter, :job_experiences, :studies)
  end
end
