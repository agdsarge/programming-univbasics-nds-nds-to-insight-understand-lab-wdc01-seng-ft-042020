$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# Call the method directors_database to retrieve the NDS

require 'pp'
directors_database
ddb = directors_database

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  pp nds
end

def print_first_directors_movie_titles
  ddb = directors_database
  first_director_films = ddb[0][:movies] #array of hashes
  array_index = 0
  output_array = []
  while array_index < first_director_films.length do
    output_array.push(first_director_films[array_index][:title])
    array_index += 1
  end
  return output_array
  
end

#pretty_print_nds(directors_database)

puts ddb.class
print_first_directors_movie_titles