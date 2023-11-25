input_line = gets.to_s
result = input_line.gsub(/A|E|G|I|O|S|Z/, "A" => "4", "E" => "3", "G" => "6", "I" => "1", "O" => "0", "S" => "5", "Z" => "2")
puts result