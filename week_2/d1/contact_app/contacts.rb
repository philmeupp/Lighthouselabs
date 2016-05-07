require 'csv'
require 'pry'

# Represents a person in an address book.
# The ContactList class will work with Contact objects instead of interacting with the CSV file directly
class Contact

  attr_accessor :name, :email
  attr_reader :id

  # Creates a new contact object
  # @param name [String] The contact's name
  # @param email [String] The contact's email address
  def initialize(id = nil, name, email)
    @id = id
    @name = name
    @email = email
    # TODO: Assign parameter values to instance variables.
  end

  # Provides functionality for managing contacts in the csv file.
  class << self

    # Opens 'contacts.csv' and creates a Contact object for each line in the file (aka each contact).
    # @return [Array<Contact>] Array of Contact objects
    def all
      arr = []
      CSV.foreach('contact.csv') do |row|
        contact = Contact.new(row[0], row[1], row[2])
        arr << contact
      end
      arr
      # TODO: Return an Array of Contact instances made from the data in 'contacts.csv'.
    end

    # Creates a new contact, adding it to the csv file, returning the new contact.
    # @param name [String] the new contact's name
    # @param email [String] the contact's email
    def create(name, email)
     contact = CSV.read("contact.csv")
     id = contact.empty? ? 1 : contact.last[0].to_i + 1
     CSV.open("contact.csv","ab") do |csv| 
       csv << [id, name, email]
       csv
     end  
   end

    

    # Find the Contact in the 'contacts.csv' file with the matching id.
    # @param id [Integer] the contact id
    # @return [Contact, nil] the contact with the specified id. If no contact has the id, returns nil.

    def find(id)
      contact = nil
      CSV.foreach('contact.csv') do |row|
        contact = Contact.new(row[0], row[1], row[2]) if row[0] == id
      end
      contact
      # ODO: Find the Contact in the 'contacts.csv' file with the matching id.
    end

    # Search for contacts by either name or email.
    # @param term [String] the name fragment or email fragment to search for
    # @return [Array<Contact>] Array of Contact objects.
    def search(term)
      arr = []
      CSV.foreach('contact.csv') do |csv|
        if csv[1].downcase.include?(term) || csv[2].downcase.include?(term)
          contact = Contact.new(csv[0], csv[1], csv[2])
          arr << contact
        end
      end
      arr
      # TODO: Select the Contact instances from the 'contacts.csv' file whose name or email attributes contain the search term.
    end

  end

end