
class TranslationsController < ApplicationController
	def index
		@translations = Translation.all
	end

	def new
		@translation = Translation.new;
	end
	def show
    	@translation = Translation.find(params[:id])
  	end

	def create
		@translation = Translation.new(translation_params)
		@translation.save
		redirect_to @translation
	end

	private
	  def translation_params
	    params.require(:translation).permit(:text, :language)
	  end

end
