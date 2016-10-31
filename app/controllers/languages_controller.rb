class LanguagesController < ApplicationController

  def index
    # AM: What happens if nobody's logged in?
    @languages = Language.where(user_id: current_user)
    @language = Language.new
  end

  def new
  end

  def create
    # AM: Again, what happens if there is no `current_user`?
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
