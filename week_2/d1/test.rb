require 'rubygems'
require 'rest-client'

# wiki_url = "http://en.wikipedia.org/"
# local_wiki_file = "wiki_page.html"

# File.open(local_wiki_file, "w") do |file|
#    file.write(RestClient.get(wiki_url))
# end


file = File.open("local_wiki_file", "r")
contents = file.read
puts contents   #=> Lorem ipsum etc.

contents = file.read
puts contents 
