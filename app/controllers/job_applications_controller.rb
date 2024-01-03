# frozen_string_literal: true

# JobApplications controller
class JobApplicationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_job_application, only: %i[show edit update destroy]

  def index
    @q = current_user.job_applications.ransack(params[:q])
    @job_applications = @q.result(distinct: true)
    @pagy, @job_applications = pagy(@job_applications)
  end

  def show; end

  def new
    @job_application = JobApplication.new
  end

  def edit; end

  def create
    @job_application = current_user.job_applications.new(job_application_params)

    if @job_application.save
      redirect_to @job_application, notice: t('.success')
    else
      render :new
    end
  end

  def update
    if @job_application.update(job_application_params)
      redirect_to @job_application, notice: t('.success')
    else
      render :edit
    end
  end

  def destroy
    @job_application.destroy
    redirect_to job_applications_url, notice: t('.success')
  end

  private

  def set_job_application
    @job_application = JobApplication.find(params[:id])
  end

  def job_application_params
    params.require(:job_application).permit(:company_name, :job_title,
                                            :application_date,
                                            :application_status,
                                            :job_description, :job_link,
                                            :interview_follow_up)
  end
end
