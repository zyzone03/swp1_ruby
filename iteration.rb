20.downto(10) do |i|
    puts "#{i} hello, world"
end

arr = ['a','b','c']

arr.each do |x|
    puts x
end

arr.each_with_index do |x, index|
    puts "#{index+1} 너는 전생에 #{x}였을 수 있어"
end

puts "너는 전생에 #{arr.sample}이었어!"
