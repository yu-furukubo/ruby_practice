inputs = gets.to_s.chomp.split(" ")
N = inputs[0].to_i
h = inputs[1].to_i
w = inputs[2].to_i
k = 1

array = []
h.times do
    array_w = []
    w.times do
        array_w << []
    end
    array << array_w
end

(3*N).times do
    num = k%3
    case num
    when 1 then
        result = 1
    when 2 then
        result = 2
    when 0 then
        result = 3
    end

    s = gets.to_s.chomp.split(" ")
    x = s[0].to_i
    y = s[1].to_i
    p = s[2].to_i
    for i in y..(y+p-1) do
        for j in x..(x+p-1) do
            if i >= h || j >= w then
                next
            else
                if array[i][j] == [] then
                    array[i][j] = result
                elsif (array[i][j] + result) == 3 then
                    array[i][j] = 3
                elsif (array[i][j] + result) == 5 then
                    array[i][j] = 1
                elsif (array[i][j] + result) == 4 then
                    array[i][j] = 2
                end
            end
        end
    end
    k += 1
end
array = array.join.to_s.split("")

result_1 = array.count("1")
result_2 = array.count("2")
result_3 = array.count("3")

puts "#{result_1} #{result_2} #{result_3}"