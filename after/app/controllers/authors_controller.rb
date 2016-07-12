class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @book_facade = BookFacade.new(Author.find(params[:id]))
  end
end
