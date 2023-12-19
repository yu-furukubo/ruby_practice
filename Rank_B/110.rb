size = gets.to_s.chomp.split(" ")
h = size[0].to_i
w = size[1].to_i

picture_a = []
picture_b = []

h.times do
    array = gets.to_s.chomp.split(" ")
    picture_a << array
end

h.times do
    array = gets.to_s.chomp.split(" ")
    picture_b << array
end

picture_fix = []

(2*h+1).times do
    array = []
    (2*w+1).times do
        array << 0
    end
    picture_fix << array
end

h.times do |i|
    w.times do |j|
        picture_fix[2*i][2*j] = picture_a[i][j].to_i
        picture_fix[2*i][2*j+1] = picture_a[i][j].to_i
        picture_fix[2*i+1][2*j] = picture_a[i][j].to_i
        picture_fix[2*i+1][2*j+1] = picture_a[i][j].to_i
    end
end

h.times do |i|
    w.times do |j|
        picture_fix[2*i+1][2*j+1] = (picture_fix[2*i+1][2*j+1] + picture_b[i][j].to_i) / 2
        picture_fix[2*i+1][2*j+2] = (picture_fix[2*i+1][2*j+2] + picture_b[i][j].to_i) / 2
        picture_fix[2*i+2][2*j+1] = (picture_fix[2*i+2][2*j+1] + picture_b[i][j].to_i) / 2
        picture_fix[2*i+2][2*j+2] = (picture_fix[2*i+2][2*j+2] + picture_b[i][j].to_i) / 2
    end
end

(2*h-1).times do |i|
    picture_fix[i+1].delete_at(0)
    picture_fix[i+1].delete_at(2*w-1)
    puts picture_fix[i+1].join(" ")
end