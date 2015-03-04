# Let's add a loop
print "How many turns do you want to have? "
turn = gets.chomp.to_i
correct_answer = 0

start = Time.now

turn.times do
    x = Random.rand (0..10)

    y = Random.rand (0..10)

# ask the question
    print "Work out the following task: #{x}+#{y} = "

# get the answer
    input = gets.chomp.to_i
    puts input

# check it's right

    right = (x+y) == input

    if right
        puts "Right!"
    else
        puts "wrong"
    end

#check the rate for correct answers
    if right
        correct_answer = correct_answer + 1
    end
    puts "current correct answers: #{correct_answer}"
end

puts "your score is #{correct_answer*100/turn}%"

finish = Time.now
elapsed = finish - start

puts "you needed #{elapsed}"

#average time to get an answer

average_time = (elapsed/turn)
puts "your average time was #{average_time} per question"
