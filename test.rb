# 課題2
# line = ""

# for i in 1..100000 do
#   while i.to_s.index("8") != nil do
#   i = i.to_s.sub("8","SNOWMAN")
#   end
#   if i == "1" then
#     line = i.to_s
#   else
#     line = line.to_s + "-" + i.to_s
#   end
# end

# puts line.slice(80000,30)

# 課題3
# result = 0
# for i in 1..2000000 do
#   i = i.to_s.split("")
#   l = i.to_s.length
#   s = 0
#   l.to_i.times do |num|
#     s += i[num].to_i
#   end
#   if s.to_i % 7 == 0 then
#     result += 1
#   end
# end
# puts result