pass = gets.to_s.chomp.split("")
input = gets.to_s.chomp.split("")

if pass == input then
    puts "NO"
elsif pass.sort == input.sort then
    puts "YES"
else
    puts "NO"
end