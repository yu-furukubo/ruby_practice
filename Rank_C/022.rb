N = gets.to_i
array = [[],[],[],[],[]]

N.times do |i|
    inputs = gets.to_s.chomp.split(" ")
    for n in 0..3
        array[n] << inputs[n].to_i
    end
end

start_price = array[0][0]
end_price = array[1][N-1]
higher_price = array[2].sort.reverse[0]
lower_price = array[3].sort[0]

puts "#{start_price} #{end_price} #{higher_price} #{lower_price}"