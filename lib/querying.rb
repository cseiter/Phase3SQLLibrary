def select_books_titles_and_years_in_first_series_order_by_year
  "select books.title,books.year from books where books.series_id='1' order by books.year";
end

def select_name_and_motto_of_char_with_longest_motto
  "select characters.name,characters.motto from characters order by length(characters.motto) desc limit 1";
end


def select_value_and_count_of_most_prolific_species
  "select characters.species,count(characters.species) from characters group by characters.species order by count(characters.species) desc limit 1";
end

def select_name_and_series_subgenres_of_authors
  "select authors.name,subgenres.name from authors join series on series.author_id = authors.id join subgenres on series.subgenre_id = subgenres.id";
end

def select_series_title_with_most_human_characters
  #just putting this monster here to show how my select statements were evolving to get a return of all the data needed to make the correct result
  #select series.title,books.title,character_books.character_id,characters.name,characters.species from series join books on series.id = books.series_id join character_books on books.id = character_books.book_id join characters on character_books.character_id = characters.id;
  #select series.title,books.title,character_books.character_id,characters.name,characters.species,count(characters.species) from series join books on series.id = books.series_id join character_books on books.id = character_books.book_id join characters on character_books.character_id = characters.id where characters.species = 'human' group by series.title order by count(characters.species);
  "select series.title from series join books on series.id = books.series_id join character_books on books.id = character_books.book_id join characters on character_books.character_id = characters.id where characters.species = 'human' group by series.title order by count(characters.species) desc limit 1";
end

def select_character_names_and_number_of_books_they_are_in
  "select characters.name,count(character_books.book_id) from character_books join characters on character_books.character_id = characters.id group by characters.name order by count(character_books.book_id) desc, characters.name";
end
