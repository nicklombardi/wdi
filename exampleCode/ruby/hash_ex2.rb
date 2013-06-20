city_populations = {:san_francisco => 100000, :nyc => 9000000,
  :boston => 600000, :berlin=> 350000, washington_dc => 600000}


def annotate_population(city_symbol, city_population_hash)
  population_value = city_population_hash[city_symbol]
  return "#{city_symbol} (population #{population_value})"
end

puts annotate_population(:san_francisco, city_populations)

puts "the population of a city is " + city_populations[:nyc].to_s