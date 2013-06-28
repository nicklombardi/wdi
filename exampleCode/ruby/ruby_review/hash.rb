# my_hash = {}

# look up values based on keys
# my_hash[key] = set's key to values
# my_hash[key] to get key if it is set
# returns nil by default if key not set

# my_hash["my_name"] = "nick"
# puts my_hash["my_name"].inspect
# puts my_hash["your_name"].inspect #output nil

def movie_function
  movies = {}

  movie_list = "Goodnight, Moon|2015|Chris Clearfield|www.awesome.com
  On the waterfront|1982|1982|DiNiro|www.google.com
  hackers|1996|Jolie|Example.com"

  movie_list.each_line do |line|
  movie_info = line.split("|")

  movie_info_hash = {}
  movie_info_hash[:title] = movie_info[0]
  movie_info_hash[:year] = {:released => movie_info[1], :started => 2010, :production_started => 2013}
  movie_info_hash[:director] = movie_info[2]
  movie_info_hash[:movie_url] = movie_info[3]

  # for arrays only
  # movies << movie_info_hash
  movies[movie_info_hash[:title].to_sym]=movie_info_hash
  end
  puts movies[:"Goodnight, Moon"][:year][:started]
  # this is a local variable
  # return to use it outside
  return movies
end

movies = movie_function[:"Goodnight, Moon"][:year][:released]


# github["WDI Summer PUblic"]["collaborators"]['username']["phlco"]["email"]