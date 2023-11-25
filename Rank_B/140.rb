# # 処理が重いやつ(NG)

# line = gets.to_s.chomp
# H = line[0].to_i
# W = line[1].to_i

# num = gets.to_s.chomp
# N = num.split(" ")[0].to_i
# T = num.split(" ")[1].to_i

# array = []
# array_2 = []

# result = 0

# N.times do
#     s = gets.to_s.chomp
#     array << s
# end

# while array != [] do
#     count = 0
#     test = array.length
#     word = array[0]
#     test.times do |i|
#         if word == array[i] then
#             count += 1
#         end
#     end
#     array_2 << count

#     array = array.reject do |name|
#         name == word
#     end
# end

# array_2 = array_2.sort.reverse

# T.times do |i|
#     result += array_2[i].to_i
# end

# puts result


# 処理軽いやつ(OK)
line = gets.to_s.chomp
H = line.split(" ")[0].to_i
W = line.split(" ")[1].to_i

num = gets.to_s.chomp
N = num.split(" ")[0].to_i
T = num.split(" ")[1].to_i

array = []

H.times do |i|
    array << []
    W.times do
        array[i] << 0
    end
end

result = 0

N.times do
    s = gets.to_s.chomp
    h = s.split(" ")[0].to_i - 1
    w = s.split(" ")[1].to_i - 1
    if array[h][w] == 0
        array[h][w] = 1
    else
        array[h][w] += 1
    end
end

array = array.flatten.sort.reverse

T.times do |i|
    result += array[i].to_i
end
puts result