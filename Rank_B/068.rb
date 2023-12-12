input = gets.to_s.chomp.split(" ")
h = input[0].to_i
w = input[1].to_i
result = []
check = 0

h.times do
    result_int = []
    array = gets.to_s.chomp.split(" ")
    sum = 0
    array.length.times do |i|
        sum += array[i].to_i
    end

    next if sum.odd?

    w.times do |j|
        result_int = []
        check += array[j].to_i
        # puts "現状#{check}で半分は#{sum/2}"
        if check == sum / 2 then
            result_int << "A"*(j+1) + "B"*(w-j-1)
            result << result_int
        end
    end
    result << result_int
    check = 0
end

if result.join != "" then
    puts "Yes"
    result.length.times do |i|
        puts result[i]
    end
else
    puts "No"
end