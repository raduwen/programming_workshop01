
sum = 0

i = 1
while i <= 100
  sum += i
  i += 1
end

puts sum

#================================
#
sum = 0

for i in 1..100
  sum += i
end

puts sum

#================================

sum = 0

(1..100).each do |i|
  sum += i
end

puts sum

#================================

sum = 0
# 100.times { |i| sum += i+1 }
100.times do |i|
  sum += i+1
end
puts sum

