N = gets.to_s.chomp
array = N.split("")

result = []

num = N.length

(num/3).times do |i|
    kari = []
    3.times do
        kari << []
    end
    result << kari
end

k = 0
j = 1

num.times do |i|

    count = array[i].to_i
    text = "#"*count + "."*(9-count)
    sub = text.to_s.scan(/.{3}/)

    result[k][0] << sub[0]
    result[k][1] << sub[1]
    result[k][2] << sub[2]

    if j == 3 then
        j = 1
        k += 1
    else
        j += 1
    end
end

(num/3).times do|i|
    result[i][0] = result[i][0].join
    result[i][1] = result[i][1].join
    result[i][2] = result[i][2].join
end

puts result