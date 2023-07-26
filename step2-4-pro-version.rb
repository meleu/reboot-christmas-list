# The step 2 is about manipulating the gift list.
#
# For what's being requested in the Step 2, our work
# is done. But let's make our program look a little
# more professional.

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

    # let's show the user the item they just have added
    puts "You've added '#{item}' to the gift list"

  when 'list'
    gift_list.each_with_index do |item, index|
      # remember: arrays starts in the index 0! But humans start
      #           counting in 1 (one).
      # PRO-TIP: make things easier for your users! So instead
      # of displaying your items starting in the index 0, let's
      # make it start in 1 (one)
      puts "#{index + 1} - #{item}"
    end

  when 'delete'
    puts "Which item number you want to remove from your gift list?"

    # although we're displaying the index to the user in "human friendly"
    # way (starting in 1 rather than 0), internally ruby is still starting
    # the array in the index 0. Therefore, we need to decrease 1 from the
    # number givem by the user.
    index = gets.chomp.to_i - 1

    # The '#delete_at' method also returns the deleted item (or nil if there
    # isn't any item in the given index). So, let's use this to tell the
    # user the item they just removed from the list (or if they didn't
    # remove anything)
    deleted_item = gift_list.delete_at(index)
    if deleted_item.nil?
      puts "No items were removed from the gift list."
    else
      puts "You've removed #{deleted_item} from the gift list."
    end

  when 'quit'
    puts "Bye!"
  else
    puts 'Invalid option! Try again!'
  end
end
