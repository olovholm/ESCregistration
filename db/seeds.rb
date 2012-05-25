# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
require 'net/http'
def find_name(code)
  req = Net::HTTP.get_response(URI.parse('http://www.foseid.priv.no/gustav/iso3166/iso3166-nb.txt'))
  @play = req.body
  @play = @play.force_encoding('UTF-8')
  if @play =~ /^(#{code})\s([a-å\w\WA-Å]*)$/i
    puts @play
  end

end

def find_nor_name
  
end



@countries = ["GB", "HU", "AL", "RU"]

@countries.each do |c|
  find_name(c)
end
