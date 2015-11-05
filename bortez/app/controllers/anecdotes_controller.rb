class AnecdotesController < ApplicationController
  def index
    @anecdotes = Anecdote.all
  end

  def show
    @anecdote = Anecdote.find(params[:id])
  end

  def new
    @anecdote = Anecdote.new
  end

  def create
    @anecdote = Anecdote.create(anecdote_params)
    redirect_to anecdote_paths(@anecdote)
  end

  def edit
    @anecdote = Anecdote.find(params[:id])
  end

  def update
    @anecdote = Anecdote.find(params[:id])
    @anecdote.update(anecdote_params)
    redirect_to anecdote_paths(@anecdote)
  end

  def destroy
    @anecdote = Anecdote.find(params[:id])
    @anecdote.destroy
    redirect_to anecdote_paths(@anecdote)
  end

  private
  def anecdote_params
  params.require(:anecdote).permit(:comment, :comment_id)
end
end
