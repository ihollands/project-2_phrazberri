class LanguagesController < ApplicationController
  def index
    @languages = Language.all
    @language = Language.new
  end

  def new
  end

  def create
    @language = Language.create!(language_params.merge(user: current_user))
    redirect_to languages_path
  end

  def show
    @language = Language.find(params[:id])
    @phrases = @language.phrases
  end

  def destroy
    @language = Language.find(params[:id])
    @language.destroy
    redirect_to root_path
  end

  private
  def language_params
    params.require(:language).permit(:name)
  end

end
