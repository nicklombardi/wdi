def secret_code(secret)
  return secret.reverse.swapcase
end

puts secret_code("This is a Secret Code")