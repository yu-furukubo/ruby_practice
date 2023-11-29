N = gets.to_i
array = readlines.map!(&:to_i)
k = array.count.to_i
result = 0

k.times do |i|
    j = i.modulo(N) + 1
    if array[i] == j then
        array[i] = "A"
    else
        c = array.index(j)
        (c-i).times do
            array[c-1], array[c] = array[c], array[c-1]
            c += -1
            result += 1
        end
        array[i] = "A"
    end
end

puts result