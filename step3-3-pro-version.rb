# The step 3 is about marking an item as bought!
#
# Let's code like a pro! 😎

gift_list = []

action = nil
until action == 'quit'
  puts "\nWhich action? [list|add|mark|delete|quit]"
  action = gets.chomp

  case action
  # add
  ######################################################################
  when 'add'
    puts 'What do you want to add to your gift list?'
    item_name = gets.chomp
    item_hash = {
      name: item_name,
      bought: false
    }
    gift_list << item_hash
    puts "You've added '#{item_hash[:name]}' to the gift list"

  # list
  ######################################################################
  when 'list'
    gift_list.each_with_index do |item, index|
      # coding like a pro using the ternary operator
      bought_flag = item[:bought] ? 'x' : ' '

      puts "#{index + 1} [#{bought_flag}] - #{item[:name]}"
    end

  # mark
  ######################################################################
  when 'mark'
    puts "Which item number you want to mark as bought?"
    index = gets.chomp.to_i - 1

    item = gift_list[index]
    if item.nil?
      puts "Invalid choice"
    else
      item[:bought] = true
      puts "You've marked '#{item[:name]}' as bought!"
    end

  # delete
  ######################################################################
  when 'delete'
    puts "Which item number you want to remove from your gift list?"
    index = gets.chomp.to_i - 1

    deleted_item = gift_list.delete_at(index)
    if deleted_item.nil?
      puts "No items were removed from the gift list."
    else
      puts "You've removed #{deleted_item[:name]} from the gift list."
    end

  # quit
  ######################################################################
  when 'quit'
    puts "Bye!"

  # invalid option
  ######################################################################
  else
    puts 'Invalid option! Try again!'
  end
end
