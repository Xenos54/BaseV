class ReportsController < ApplicationController
  before_action :is_admin_authenticated?, except: [:show]
  before_action :set_report, only: [:show, :edit, :update, :destroy]

  def index
    @reports = Report.all.entries 
    #weird quirk of mongoid that returns a curser, not an array of all
    #@ instance variable
    #@@ class variables
   
  end
  
  def show
  	@reports = Report.all.entries
  end

  def new
    @report = Report.new
    @report.save
    #@report.build
    # render json: @person #skips the view, and just renders out the json
  end
  
  def create
    @report = Report.create(report_params)
    redirect_to report_url(@report)
  end

  def edit
    @report.save
  end

  def update
    if @report.update(report_params)
      redirect_to report_url(@report), notice: "saved successfully"
    else
      redirect_to report_url(@report), notice: "error saving #{@report.errors.inspect}"
    end    
  end

  def destroy
    @report.destroy
    redirect_to reports_url
  end
  
  def report_params
    params.require(:report).permit(
      :name, :name_of_site, :address_of_site, :summary_results, :cost, :user_id
      )
  end

  def set_report
    @report = Report.find(params[:id])    
  end

end