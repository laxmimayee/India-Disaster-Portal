class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  respond_to :html



def my
    @jobs = Job.all
    #respond_with(@articles)
  end


def all
    @jobs = Job.all
    #respond_with(@articles)
  end
  def slider
    @jobs = Job.all
    #respond_with(@articles)
  end


   def preview
    @jobs = Job.all
    #respond_with(@articles)
  end



  def index
    @jobs = Job.all
    respond_with(@jobs)
  end

  def show
    respond_with(@job)
  end

  def new
    @job = Job.new
      respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @article }
      format.js
    end
  end

  def edit
  end

  def create
    @job = Job.new(job_params.merge(user_id: current_user.id))
    @job.save
    respond_with(@job)
  end

  def update
    @job.update(job_params)
    respond_with(@job)
  end

  def destroy
    @job.destroy
    respond_with(@job)
  end

  private
    def set_job
      @job = Job.find(params[:id])
    end

    def job_params
      params.require(:job).permit(:company_name, :hiring_description, :company_url, :job_location, :email, :display_at, :approve, :avatar, :user_id, :tittle, :keys)
    end
end
