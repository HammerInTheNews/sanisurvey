class SurveysController < ApplicationController

	def index
		@surveys = Survey.all
	end

	def new
      @survey = Survey.new
    end
  
    def create
    @survey = Survey.new(params[:survey])
	    if @survey.save
	      redirect_to surveys_path
	    else
	      # This line overrides the default rendering behavior, which
	      # would have been to render the "create" view.
	      render :action => "new"
	    end
	end

	def show
		Survey.find(params[:id])
	end
end
