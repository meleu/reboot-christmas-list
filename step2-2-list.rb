# The step 2 is about manipulating the gift list.
#
# In this file we're coding the 'list' action

gift_list = []

action = nil
until action == 'quit'
  puts "\nWhich action? [list|add|delete|quit]"
  action = gets.chomp

  case action
  when 'add'
    puts 'What do you want to add to your gift list?'
    item = gets.chomp
    gift_list << item
    puts "#{item} was added to the gift list"

  when 'list'
    # let's use #each_with_index so we can
    # display a number before the items
    # (trust me, this number will help us soon)
    gift_list.each_with_index do |item, index|
      puts "#{index} - #{item}"
    end

  when 'delete'
    puts "TODO: delete an item from the list"

  when 'quit'
    puts "Bye!"
  else
    puts 'Invalid option! Try again!'
  end
end
