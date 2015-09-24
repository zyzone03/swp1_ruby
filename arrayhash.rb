students = [{name: "Lisa", age: 20},
            {name: "Brad", age: 20},
            {name: "Joy", age: 60}]

students.each do |u|
  puts "#{u[:name]} 's age is #{u[:age]}"
end
