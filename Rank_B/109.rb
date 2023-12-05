set_value = gets.to_s.chomp.split(" ")
N = set_value[0].to_i
H = set_value[1].to_i
W = set_value[2].to_i
p = set_value[3].to_i
q = set_value[4].to_i

seat = []

H.times do
    width = []
    W.times do
        width << 0
    end
    seat << width
end

N.times do
    num = gets.to_s.chomp.split(" ")
    i = num[0].to_i
    j = num[1].to_i
    seat[i][j] = 1
end

result = []
k = 1

if seat[p][q] == 0 then
    result << "#{p} #{q}"
end

while result == [] do
    h = k
    w = 0
    (4*k).times do |i|
        if (p + h) < H && (p + h) >= 0 && (q + w) < W && (q + w) >= 0 then
            check = seat[p+h][q+w]
            if check != 1 then
                result << "#{p+h} #{q+w}"
            end
        end

        if (i + 1) <= k then
            h -= 1
            w -= 1
        elsif (i + 1) > k && (i + 1) <= (2 * k) then
            h -= 1
            w += 1
        elsif (i + 1) > (2 * k) && (i + 1) <= (3 * k) then
            h += 1
            w += 1
        elsif (i + 1) > (3 * k) then
            h += 1
            w -= 1
        end
    end
    k += 1
end
puts result