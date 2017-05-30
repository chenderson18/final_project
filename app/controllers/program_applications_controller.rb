class ProgramApplicationsController < ApplicationController
  def index
    @program_applications = ProgramApplication.all

    render("program_applications/index.html.erb")
  end

  def show
    @program_application = ProgramApplication.find(params[:id])

    render("program_applications/show.html.erb")
  end

  def new
    @program_application = ProgramApplication.new

    render("program_applications/new.html.erb")
  end

  def create
    @program_application = ProgramApplication.new

    @program_application.summer_program_id = params[:summer_program_id]
    @program_application.reason_for_choosing = params[:reason_for_choosing]
    @program_application.notes = params[:notes]
    @program_application.user_id = params[:user_id]

    save_status = @program_application.save

    if save_status == true
      redirect_to("/program_applications/#{@program_application.id}", :notice => "Program application created successfully.")
    else
      render("program_applications/new.html.erb")
    end
  end

  def edit
    @program_application = ProgramApplication.find(params[:id])

    render("program_applications/edit.html.erb")
  end

  def update
    @program_application = ProgramApplication.find(params[:id])

    @program_application.summer_program_id = params[:summer_program_id]
    @program_application.reason_for_choosing = params[:reason_for_choosing]
    @program_application.notes = params[:notes]
    @program_application.user_id = params[:user_id]

    save_status = @program_application.save

    if save_status == true
      redirect_to("/program_applications/#{@program_application.id}", :notice => "Program application updated successfully.")
    else
      render("program_applications/edit.html.erb")
    end
  end

  def destroy
    @program_application = ProgramApplication.find(params[:id])

    @program_application.destroy

    if URI(request.referer).path == "/program_applications/#{@program_application.id}"
      redirect_to("/", :notice => "Program application deleted.")
    else
      redirect_to(:back, :notice => "Program application deleted.")
    end
  end
end
