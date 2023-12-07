line = gets.to_s.chomp.split(" ")
xc = line[0].to_i
yc = line[1].to_i
r_1 = line[2].to_i
r_2 = line[3].to_i

N = gets.to_i

N.times do
    input = gets.to_s.chomp.split(" ")
    x = input[0].to_i
    y = input[1].to_i
    check = (x - xc)**2 + (y - yc)**2
    if r_1**2 <= check && r_2**2 >= check then
        puts "yes"
    else
        puts "no"
    end
end