# The step one is just about creating the menu!
#
# The main goal of this step is to exercise loops,
# and conditionals (if-elsif or case-when) to interact
# with the user of our program.
#
# Let's focus on just that and avoid overloading
# our mind too much stuff to handle!

# initializing the 'action' so to prevent "undefined variable" error
action = nil
# PRO-TIP: give the variables a meaningful name!
# in this case, it represents the 'action' chosen
# by the user

until action == 'quit'
  puts "\nWhich action? [list|add|delete|quit]"
  action = gets.chomp

  # Here we could use if-elsif...
  # but using case makes the code more succinct.
  case action
  when 'list'
    puts "TODO: list the items"
  when 'add'
    puts "TODO: add an item to the list"
  when 'delete'
    puts "TODO: delete an item from the list"
  when 'quit'
    # remember: when the user choose 'quit', the
    # condition in line 6 above will be evaluated
    # to true and interrupt the loop.
    puts "Bye!"
  else
    puts 'Invalid option! Try again!'
  end
end
