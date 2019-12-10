#you should install json gem
#for this type in terminal : gem install json
require 'json'

#the file name should be result.json
#or change the file name here:
file = File.read('result.json')
data_hash = JSON.parse(file)

data_hash['list'].each do |contact|
	# open and write to a file with ruby
	vcf = File.open("output.vcf", "a")
	vcf.puts "BEGIN:VCARD"
	vcf.puts "VERSION:2.1"
	vcf.puts "N:#{contact['last_name']};#{contact['first_name']};;;"
	vcf.puts "FN:#{contact['first_name']} #{contact['last_name']}"

	#this block replaces 00 with + in a phone number
	if contact['phone_number'].start_with?('00')
		contact['phone_number'].sub!(/^../, '+')
	end	
	vcf.puts "TEL;CELL:#{contact['phone_number']}"
	vcf.puts "END:VCARD"
	vcf.close
end
puts 'done'