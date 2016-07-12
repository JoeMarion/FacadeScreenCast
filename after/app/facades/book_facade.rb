class BookFacade
  attr_reader :author, :books

  def initialize(author)
    @author = author
    @books = @author.books
  end

  def published
    @published = @books.where(published: true)
  end

  def unpublished
    @unpublished = @books.where(published: false)
  end

  def fiction
    @fiction = @books.where(fiction: true)
  end

  def nonfiction
    @nonfiction = @books.where(fiction: false)
  end
end
