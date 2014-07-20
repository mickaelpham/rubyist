print "Enter the temperature in Celsius: "
celsius = gets.chomp.to_i
fahrenheit = (celsius * 9) / 5 + 32
puts "Saving result to output file 'temp.txt'"
fh = File.new("temp.txt", "w")
fh.puts fahrenheit
fh.close