PI = 3.141592

def volume(length, width, height)
  return length*width*height
end

def volume_of_sphere(radius)
  return (4/3.0*PI*(radius**3))
end

def volume_of_two_spheres(radius_1, radius_2)
  return volume_of_sphere(radius_1) + volume_of_sphere(radius_2)
end

volume(2,3,4)

volume_of_sphere(3)

puts volume_of_two_spheres(2,3)