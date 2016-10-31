class PhrasesController < ApplicationController

  # AM: I can currently access edit/update functionality when I am signed out.
  # AM: What code could you add here and/or in the corresponding view so that I cannot visit the edit page if I am signed out?
  def edit
    @language = Language.find(params[:language_id])
    @phrase = Phrase.find(params[:id])
  end

  def show
    @language = Language.find(params[:language_id])
    @phrase = Phrase.find(params[:id])
  end

  def update
    @language = Language.find(params[:language_id])
    @phrase = Phrase.find(params[:id])
    @phrase.update(phrase_params)
    redirect_to language_path(@language)
  end

  def new
    @language = Language.find(params[:language_id])
    @phrase = @language.phrases.new
  end

  def create
    @language = Language.find(params[:language_id])
    @phrase = @language.phrases.create!(phrase_params)
    redirect_to language_path(@language)
  end

  def destroy
    @language = Language.find(params[:language_id])
    @phrase = Phrase.find(params[:id])
    @phrase.destroy
    redirect_to language_path(@language)
  end

  private
  def phrase_params
    # AM: Why do you include `language_id` in your strong params? From the looks of your `create` and `update` methods, you're already establishing the association between language and phrase.
    params.require(:phrase).permit(:body, :context, :pronunciation, :lit_trans, :fig_trans, :language_id)
  end

end
