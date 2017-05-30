class ScholarshipApplicationsController < ApplicationController
  def index
    @scholarship_applications = ScholarshipApplication.all

    render("scholarship_applications/index.html.erb")
  end

  def show
    @scholarship_application = ScholarshipApplication.find(params[:id])

    render("scholarship_applications/show.html.erb")
  end

  def new
    @scholarship_application = ScholarshipApplication.new

    render("scholarship_applications/new.html.erb")
  end

  def create
    @scholarship_application = ScholarshipApplication.new

    @scholarship_application.link_to_application = params[:link_to_application]
    @scholarship_application.essays = params[:essays]
    @scholarship_application.user_id = params[:user_id]
    @scholarship_application.scholarship_amount = params[:scholarship_amount]
    @scholarship_application.application_deadline = params[:application_deadline]
    @scholarship_application.summer_program_id = params[:summer_program_id]

    save_status = @scholarship_application.save

    if save_status == true
      redirect_to("/scholarship_applications/#{@scholarship_application.id}", :notice => "Scholarship application created successfully.")
    else
      render("scholarship_applications/new.html.erb")
    end
  end

  def edit
    @scholarship_application = ScholarshipApplication.find(params[:id])

    render("scholarship_applications/edit.html.erb")
  end

  def update
    @scholarship_application = ScholarshipApplication.find(params[:id])

    @scholarship_application.link_to_application = params[:link_to_application]
    @scholarship_application.essays = params[:essays]
    @scholarship_application.user_id = params[:user_id]
    @scholarship_application.scholarship_amount = params[:scholarship_amount]
    @scholarship_application.application_deadline = params[:application_deadline]
    @scholarship_application.summer_program_id = params[:summer_program_id]

    save_status = @scholarship_application.save

    if save_status == true
      redirect_to("/scholarship_applications/#{@scholarship_application.id}", :notice => "Scholarship application updated successfully.")
    else
      render("scholarship_applications/edit.html.erb")
    end
  end

  def destroy
    @scholarship_application = ScholarshipApplication.find(params[:id])

    @scholarship_application.destroy

    if URI(request.referer).path == "/scholarship_applications/#{@scholarship_application.id}"
      redirect_to("/", :notice => "Scholarship application deleted.")
    else
      redirect_to(:back, :notice => "Scholarship application deleted.")
    end
  end
end
