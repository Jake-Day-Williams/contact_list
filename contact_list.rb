continue = true
contacts = []
while continue == true 

  puts "---Contacts List Menu---"
  puts "1) All Contacts"
  puts "2) Create Contact"
  puts "3) Edit Contact"
  puts "4) Delete Contact"

  choice = gets.to_i

  case choice
   when 1
      puts contacts
 
   when 2
    puts "What is the contact name?"
    new_contact = gets.strip
    contacts << new_contact
    puts "contact With Name: #{new_contact} Added "
 
   when 3
    puts "Which name would you like to change?"
      selection = gets.strip
      contacts.each { |element| 
        if(element.downcase == selection.downcase)
          puts "Type the new name."
          element.replace(gets.strip)
        end
      }

    when 4
     puts "What contact should be removed?"
      contact = gets.strip
      contacts.delete(contact)
  end
  
  puts "Press enter to continue or type 'quit' to exit."
  answer = gets.strip
  if(answer == "quit")
     continue = false
  end 
end