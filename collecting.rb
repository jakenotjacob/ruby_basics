@cats = ['Juan', 'Keigo', 'Craig']

puts "Before the transformation, they were merely #{@cats.count} cats..."
def transform
  @cats.collect { |parts|
    puts parts.reverse
  }
end
puts @cats
def print_name
    @cats.each do 
      puts "#{self} here" 
    end
end
print_name
