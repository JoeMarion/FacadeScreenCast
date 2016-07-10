class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
    @books = @author.books
    @published = @books.where(published: true)
    @unpublished = @books.where(published: false)
    @fiction = @books.where(fiction: true)
    @nonfiction = @books.where(fiction: false)
  end
end
