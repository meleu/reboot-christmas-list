# The step 2 is about manipulating the gift list.
#
# HINT: as we start with an empty list, start coding the
# 'add' action (if you start with 'list', you won't have
# anything to be listed).

# Let's start a blank list
gift_list = []

action = nil
until action == 'quit'
  puts "\nWhich action? [list|add|delete|quit]"
  action = gets.chomp

  case action
  when 'add'
    puts 'What do you want to add to your gift list?'
    item = gets.chomp   # read the item
    gift_list << item   # append the item to the gift_list

    # the line below is just for checking! we're going to delete it!
    p gift_list

  when 'list'
    puts "TODO: list the items"
  when 'delete'
    puts "TODO: delete an item from the list"
  when 'quit'
    puts "Bye!"
  else
    puts 'Invalid option! Try again!'
  end
end
