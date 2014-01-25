require 'google-search'
load "/home/papri/algoboot.rb"

#@cats ={"Sequence sorting"=>["Bubble sort"]}

@corpus = {}
@corpus["Sequence sorting"] = {}
puts @corpus

@cats["Sequence sorting"].each do |t|
puts t
@gpages = []

Google::Search::Web.new(:query => t).each do |w|
	@gpages << [w.title,w.uri]
end 


whiteregex = /en.wikipedia|youtube|rosetta|geeksforgeeks|cprogramming.com|personal.kent|nist|algolist|wikiversity|wolfram|programmingsimplified/
blackregex = /wikimedia|.pdf|.doc|.txt|.ppt|itunes|khan|blogspot|.gif|.pps|nanamic|freevbcode|scratched|download|reddit|interactivepython.org|google|yahoo|prezi|amazon|cyclopaedia|reference|researchgate|quitebasic|download/

@resources = []
@uniquelinks = []

@gpages.each do |t,l|
	if l =~ whiteregex
		@resources << [t,l]
		@uniquelinks << l
	end
end

# Duckduckgo results extraction

@doc = Nokogiri::HTML(open("https://api.duckduckgo.com/html?q="+t.gsub(/ |_/,"+")))
x = @doc.css(".web-result-sponsored")
x.remove
@carrier = @doc.css("div.web-result a.large")
puts @carrier.length
@carrier.each do |c|
	if !@uniquelinks.join.include?(c["href"].gsub(/https:\/\/|http:\/\//,"")) and !(c["href"] =~ blackregex)
		@resources << [c.text,c["href"]]
		@uniquelinks << c["href"]
	end
end


#saving the whitelist resources

#j = 0
#while j < @gtitle.length
#	flag = 0
#	whitelist.each do |w|
##		if @glinks[j].include?(w)
#			flag = 1
#		end
#	end
#	
#	if flag == 1
#		dup = [@gtitle[j],@glinks[j]]#
#		@gtitle.delete(@gtitle[j])
#		@glinks.delete(@glinks[j])
#		@resources << dup
#	end
#	j = j + 1
#end



#saving resources while ignoring blacklist resources

#j = 0 
#while j < @gtitle.length
#	flag = 1
#	blacklist.each do |b|
#		if @glinks[j].include?(b)
#			flag = 0
#		end
#	end
#	
#	if flag == 1
#		dup = [@gtitle[j],@glinks[j]]
#		@resources << dup
#	end
#	if @resources.length > 14
#		break
#	end
#	j = j + 1
#end

puts @resources
@corpus["Sequence sorting"][t] = @resources

end


