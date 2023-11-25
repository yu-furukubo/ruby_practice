input_line = gets.to_s.chomp.split(" ")
N = input_line[0].to_i
M = input_line[1].to_i
array = []
result = []

N.times do
    route = gets.to_s.chomp
    array << route
end

N.times do |j|
    k = 0
    test = []
    N.times do
        check = array[(k)].to_s.split(" ")[j].to_i
        if check >= M then
            test << "n"
        else 
            test << "y"
        end
        
        k += 1
    end
    if test.index("n") == nil then
        result << (j + 1)
    end
end

if result == [] then
    puts "wait"
else
    puts result.join(" ")
end