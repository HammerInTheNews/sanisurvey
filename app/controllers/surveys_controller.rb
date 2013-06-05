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
	      	format.html { redirect_to @surveys_path, notice: 'survey was successfully updated.' }
	        format.json { head :no_content } 
	    else
	      # This line overrides the default rendering behavior, which
	      # would have been to render the "create" view.
	       format.html { render action: "new" }
	       format.json { render json: @survey.errors, status: :unprocessable_entity }
	    end
	end

	def show
		@survey = Survey.find(params[:id])
	end

	def edit
	  @survey = Survey.find(params[:id])
    end

    def update
	    @survey = Survey.find(params[:id])

	    respond_to do |format|
	      if @survey.update_attributes(params[:survey])
	        format.html { redirect_to @survey, notice: 'survey was successfully updated.' }
	        format.json { head :no_content }
	      else
	        format.html { render action: "edit" }
	        format.json { render json: @survey.errors, status: :unprocessable_entity }
	      end
	    end
	end
end
