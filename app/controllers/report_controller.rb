class ReportController < ApplicationController
  
  def show
  	@reports =  Report.all.entries
  	@report = Report.find_by(id: params[:report_id])
  end


end