require_relative 'contacts'
require 'csv'
# Interfaces between a user and their contact list. Reads from and
 # writes to standard I/O.

class ContactList
  # TODO: Implement user interaction. This should be the only 
  # file where you use `puts` and `gets`.
  puts ARGV
  def initialize
    @cmd = ARGV[0]
    @cmd2 = ARGV[1]
    cmd_to_execute
  end

  def cmd_to_execute
    case @cmd
    when 'new' then new_contact
    when 'list' then list_all
    when 'show' then show_contact
    when 'search' then search_contact
    else
      puts "\nHere is a list of commands"
      puts "\tnew    - Create a new contact"
      puts "\tlist   - List all contacts"
      puts "\tshow   - Show a contact"
      puts "\tsearch - Search contacts"
    end
  end

  def list_all
    i = 0
    contacts = Contact.all
    contacts.each do |contact|
      i+=1
      puts "#{contact.id}:#{contact.name} (#{contact.email})"
    end
    puts "--------------"
    puts "#{i} total records"
  end


  def new_contact
    puts 'Please enter full name'
    full_name = STDIN.gets.chomp
    puts 'Please enter email'
    email = STDIN.gets.chomp
    contact = Contact.create(full_name, email)
  end

  def search_contact    
    i = 0
    contact = Contact.search(@cmd2)
    contact.each do |contact|
      i += 1
      puts "#{contact.id}:#{contact.name} (#{contact.email})"
    end
      puts "--------------"
      puts "#{i} total records" 
    # end
  end

  ##################

  def show_contact
    contact = Contact.find(@cmd2)
    if contact
      puts contact.name
      puts contact.email
    else
      puts "Not found"
    end
  end

################
contact_list = ContactList.new
end


