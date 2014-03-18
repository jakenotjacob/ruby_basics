#Using `for`
def array_copy(source)
  destination = []
  for number in source
    destination << number if number < 4
  end
  return destination
end

