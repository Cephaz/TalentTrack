# frozen_string_literal: true

# JobApplications controller
class JobApplicationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @job_applications = current_user.job_applications.sorted

    @pagy, @job_applications = pagy(@job_applications)
  end

  private

  def set_job_application
    @job_application = current_user.job_applications.find(params[:id])
  end

  def job_application_params
    params.require(:job_application).permit(:company_name, :job_title,
                                            :application_date,
                                            :application_status,
                                            :job_description, :job_link,
                                            :interview_follow_up)
  end
end
