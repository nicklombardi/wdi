# Many ways to create a hash.
my_hash = {}
my_hash = Hash.new

# Hashes: lookup values based on keys
# my_hash[key] = value # set's the key to value
# my_hash[key] to get a key if it is set
# But returns nil by default if the key is not set.

my_hash["my_name"]="Chris"
#puts my_hash["my_name"].inspect # Output: "Chris"

#Returns nil if key doesn't exist
#puts my_hash["your name"].inspect

# Throws an error, no variable your_hash
# puts your_hash["my_name"].inspect


def movie_function
  # A local variable
  # Only available in the function
  movies={}

  movie_list="Goodnight, Moon|2015|Chris Clearfield|www.awesomeimage.com
On the Waterfront|1982|DiNiro|www.google.com
Hackers|1996|Angilina Jolie|www.example1.com"

  # File.each.
  # Each time we run through the loop, we execute this code
  movie_list.each_line do |line|
    # Title, Year, Director, URL
    movie_info=line.split("|")

    movie_info_hash={}
    # Symbols can be used as the keys as well!
    # we manually assembled the hash from data in our array.
    movie_info_hash[:title] = movie_info[0]
    # {:released => year} {released: year}
    # Looking at NESTING HASHES! OMG!!
    movie_info_hash[:year] = {:released => movie_info[1], :started => {:script_started => 2010, :production_started=>2013}}
    movie_info_hash[:director] = movie_info[2]
    movie_info_hash[:movie_url] = movie_info[3]
    # WOAH. This is for an array only!
    # movies is a hash!
    # movies << movie_info_hash
    # Conceptually, this is what I'm going for.
    # movies["Goodnight, Moon"]
    # : is just used to represent a symbol
    movies[movie_info_hash[:title].to_sym]=movie_info_hash
  end
  # This is a local variable. We have to return it
  # to make accessible from the outside.
  return movies
end

#movie_function

# A hash, that is returned from the movie function?
# WHAT DO I EQUAL?
puts movie_function[:"Goodnight, Moon"][:year][:started][:production_started]

#<rabbithole>
# Imaginary github repository info
# github = "Chris's repositories"
# email = github["WDI Summer Public"]["collaborators"]["phlco"]["email_address"]
# </rabbithole>

#get "/" do
# @movies = movie_function
#end