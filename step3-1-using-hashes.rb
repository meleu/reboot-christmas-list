# The step 3 is about marking an item as bought!
#
# The intention here is to make you, as a student, play with
# hashes. More specifically, an array of hashes.
#
# This code here is just adding hashes to the mix, we're we
# are not yet finishing the step 3 (marking the bought items).

gift_list = []

action = nil
until action == 'quit'
  puts "\nWhich action? [list|add|delete|quit]"
  action = gets.chomp

  case action
  # add
  ######################################################################
  when 'add'
    puts 'What do you want to add to your gift list?'
    item_name = gets.chomp

    # Let's create a hash where we have the item name and a way
    # to say if this item was bought or not (by default bought is
    # false, otherwise we wouldn't add it to our shopping list):
    item_hash = {
      name: item_name,
      bought: false
    }

    # Here we're adding a hash to the array
    gift_list << item_hash

    # remember: we now need to access the item's name
    # using the hash notation.
    puts "You've added '#{item_hash[:name]}' to the gift list"

  # list
  ######################################################################
  when 'list'
    gift_list.each_with_index do |item, index|
      # again, 'item' is now a hash!
      # So, if we want to display the item's name,
      # we need to do it properly
      puts "#{index + 1} - #{item[:name]}"
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
      # again: let's use the proper notation
      # to access the deleted item's name.
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
