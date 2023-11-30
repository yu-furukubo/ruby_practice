inputs_line = gets.to_s.chomp.split(" ")
N = inputs_line[0].to_i
M = inputs_line[1].to_i
limit_array = []
N.times do
    limit_array << gets.to_i
end

result = []
N.times do
    result << 0
end

k = 0

M.times do
    count = gets.to_i

    if count > limit_array[k] then
        while count > limit_array[k] do
            result[k] += limit_array[k]
            count += -limit_array[k]
            if k == N-1 then
                k = 0
            else
                k += 1
            end
        end
    end

    result[k] += count
    if k == N-1 then
        k = 0
    else
        k += 1
    end
end

puts result