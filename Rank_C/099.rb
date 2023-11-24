input_line = gets.to_s
N = input_line.split(" ")[0].to_i
D = input_line.split(" ")[1].to_i
width = D

(N-1).times do
    s = gets.to_i
    width += D - s
end

puts D * width