class SummerProgramsController < ApplicationController
  def index
    @summer_programs = SummerProgram.all

    render("summer_programs/index.html.erb")
  end

  def show
    @summer_program = SummerProgram.find(params[:id])

    render("summer_programs/show.html.erb")
  end

  def new
    @summer_program = SummerProgram.new

    render("summer_programs/new.html.erb")
  end

  def create
    @summer_program = SummerProgram.new

    @summer_program.tuition = params[:tuition]
    @summer_program.description = params[:description]
    @summer_program.location = params[:location]
    @summer_program.start_date = params[:start_date]
    @summer_program.end_date = params[:end_date]
    @summer_program.scholarship_information = params[:scholarship_information]
    @summer_program.application_fee = params[:application_fee]
    @summer_program.academic_area = params[:academic_area]
    @summer_program.binding = params[:binding]
    @summer_program.program_category = params[:program_category]
    @summer_program.application_notes = params[:application_notes]
    @summer_program.region = params[:region]
    @summer_program.financial_aid_deadline = params[:financial_aid_deadline]
    @summer_program.minds_matter_deadline = params[:minds_matter_deadline]
    @summer_program.application = params[:application]
    @summer_program.transcript = params[:transcript]
    @summer_program.recommendation_letters = params[:recommendation_letters]
    @summer_program.sat_act = params[:sat_act]
    @summer_program.essays = params[:essays]
    @summer_program.essay_topic = params[:essay_topic]
    @summer_program.resume = params[:resume]
    @summer_program.gpa_min = params[:gpa_min]
    @summer_program.contact = params[:contact]
    @summer_program.website = params[:website]
    @summer_program.international = params[:international]

    save_status = @summer_program.save

    if save_status == true
      redirect_to("/summer_programs/#{@summer_program.id}", :notice => "Summer program created successfully.")
    else
      render("summer_programs/new.html.erb")
    end
  end

  def edit
    @summer_program = SummerProgram.find(params[:id])

    render("summer_programs/edit.html.erb")
  end

  def update
    @summer_program = SummerProgram.find(params[:id])

    @summer_program.tuition = params[:tuition]
    @summer_program.description = params[:description]
    @summer_program.location = params[:location]
    @summer_program.start_date = params[:start_date]
    @summer_program.end_date = params[:end_date]
    @summer_program.scholarship_information = params[:scholarship_information]
    @summer_program.application_fee = params[:application_fee]
    @summer_program.academic_area = params[:academic_area]
    @summer_program.binding = params[:binding]
    @summer_program.program_category = params[:program_category]
    @summer_program.application_notes = params[:application_notes]
    @summer_program.region = params[:region]
    @summer_program.financial_aid_deadline = params[:financial_aid_deadline]
    @summer_program.minds_matter_deadline = params[:minds_matter_deadline]
    @summer_program.application = params[:application]
    @summer_program.transcript = params[:transcript]
    @summer_program.recommendation_letters = params[:recommendation_letters]
    @summer_program.sat_act = params[:sat_act]
    @summer_program.essays = params[:essays]
    @summer_program.essay_topic = params[:essay_topic]
    @summer_program.resume = params[:resume]
    @summer_program.gpa_min = params[:gpa_min]
    @summer_program.contact = params[:contact]
    @summer_program.website = params[:website]
    @summer_program.international = params[:international]

    save_status = @summer_program.save

    if save_status == true
      redirect_to("/summer_programs/#{@summer_program.id}", :notice => "Summer program updated successfully.")
    else
      render("summer_programs/edit.html.erb")
    end
  end

  def destroy
    @summer_program = SummerProgram.find(params[:id])

    @summer_program.destroy

    if URI(request.referer).path == "/summer_programs/#{@summer_program.id}"
      redirect_to("/", :notice => "Summer program deleted.")
    else
      redirect_to(:back, :notice => "Summer program deleted.")
    end
  end
end
