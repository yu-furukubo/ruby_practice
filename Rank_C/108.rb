N = gets.to_i
stay_time_array = []
N.times do
    stay_time_array << gets.to_i
end

move_time_array = []
N.times do
    move_time_array << gets.to_s.chomp.split(" ")
end

M = gets.to_i

p = 0
q = 0
result = 0

M.times do |i|
    q = gets.to_i
    result += stay_time_array[q-1]

    if p != 0 then
        result += move_time_array[p-1][q-1].to_i
    end
    p = q
end

puts result