def alt_reverse(string)
  word = ""
  chars = string.each_char.to_a
  chars.size.times { word << chars.pop }
  word
end

puts "Enter a string:"
input = gets.chomp
output = input.each_char.to_a.reverse.join
puts output
alt_output = alt_reverse(input)
puts alt_output