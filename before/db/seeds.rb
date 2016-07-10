Book.destroy_all
Author.destroy_all

10.times do
  Author.create!(name: Faker::Name.name)
end

authors = Author.all

authors.each do |a|
  30.times do
    Book.create!(title: Faker::Book.title, genre: Faker::Book.genre, published: true, fiction: true, author: a)
  end
  unpublished = a.books.limit(10)
  fiction = a.books.where(published: true).limit(10)
  unpublished.each {|unpub| unpub.update_attribute(:published, false)}
  fiction.each {|fic| fic.update_attribute(:fiction, false)}
end
