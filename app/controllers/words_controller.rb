class WordsController < ApplicationController

  before_action :authenticate_user!
  before_action :find_word, only: [:show, :edit, :update, :destroy]

  def index
    @words, @alphaParams = current_user.words.all.alpha_paginate(params[:letter]){|word| word.title}
    @word = current_user.words.build
  end

  def show
  end

  def new
    @word = current_user.words.build
  end

  def create
    @word = current_user.words.build(word_params)
    if @word.save
     redirect_to @word
    else
      render :new
    end

  end

  def edit
  end

  def update
    if @word.update(word_params)
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
