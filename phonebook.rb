phonebook = []
puts "This is a phonebook service. You can add phonenumbers here. If you want to exit, type 'exit' in the name section."

loop do

print 'What is his(her) name : '
name = gets.chomp
if name == 'exit'
    break
end

# if name == 'delete'
#     print "What is the name of the number you want to delete? "
#     del_name = get.chomp
#     if 

print 'What is his(her) gender : '
gender = gets.chomp

if gender != 'female' or gender != 'male'
    gender = 'male'
end

print 'What is his(her) phone number : '
phonenumber = gets.chomp

phonebook << {"name": name, "gender": gender, "phonenumber": phonenumber}

phonebook.each_with_index do |x, i|
    puts "** #{phonebook[i][:name]} : #{phonebook[i][:gender]} / #{phonebook[i][:phonenumber]}"
    # puts phonebook["#{i}"]
end

print "Do you want to delete anyone?(y/n)? " # 삭제 기능 추가
answer = gets.chomp
if answer == 'y'
    print "What is his(her) name? "
    del_name = gets.chomp
    # del_name = del_name.to_sym
    phonebook.each_with_index do |x, i| # 해당 hash 제거
        if phonebook[i][:name] == del_name
            phonebook.delete_at(i)
        end
    end
end

# break if name == ''
end
