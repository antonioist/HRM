class JobsController < ApplicationController
  before_action :set_job, only: [:edit, :update, :show, :destroy]
  def index
    @jobs = Job.all
  end

  def show
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @job.update
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @job.destroy
    redirect_to root_path
  end

  private

  def set_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:title, :type, :position, :salary, :experience, :details)
  end

end
