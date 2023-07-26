# The step 2 is about manipulating the gift list.
#
# In this file we're coding the 'delete' action

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
    gift_list.each_with_index do |item, index|
      puts "#{index} - #{item}"
    end

  when 'delete'
    # The user chooses the item to be deleted based on the number
    # displayed before the item when it was listed ('list' action)
    puts "Which item number you want to remove from your gift list?"

    # gets.chomp returns a string, let's convert it to an integer.
    index = gets.chomp.to_i

    # Let's use '#delete_at' to delete the item from the gift_list.
    gift_list.delete_at(index)

  when 'quit'
    puts "Bye!"
  else
    puts 'Invalid option! Try again!'
  end
end
