class ResultsController < ApplicationController
  def index
    @search_results = Word.search_everywhere(params[:query])
  end
end
