input = gets.to_s.chomp.split(" ")
N = input[0].to_i
r = input[1].to_i

N.times do |i|
    check = []
    array = gets.to_s.chomp.split(" ")
    3.times do |j|
        if array[j].to_i < 2*r then
            check << "n"
        end
    end
    if check == [] then
        puts i + 1
    end
end