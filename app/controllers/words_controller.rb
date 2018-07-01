class WordsController < ApplicationController

  before_action :authenticate_user!
  before_action :find_word, only: [:show, :edit, :update, :destroy]

  def index
    @words, @alphaParams = Word.all.alpha_paginate(params[:letter]){|word| word.title}
  end

  def show
  end

  def new
    @word = Word.new
  end

  def create
    @word = Word.new(word_params)
    if @word.save
     redirect_to @word
    else
      render :new
    end
  end

  def edit
    @word = Word.find(params[:id])
  end

  def update
    if @word.update_attributes(word_params)
      redirect_to @word
    else
      render :edit
    end
  end

  def destroy
    @word.destroy
    redirect_to words_path
  end

  private

  def find_word
    @word = Word.find(params[:id])
  end

  def word_params
    params.require(:word).permit(:title, :translation, :example)
  end

end
