require 'google-search'
load '/home/papri/git_work/dqscripts/svm/svm_predict.rb'
load '/home/papri/git_work/dqscripts/oscorpus/osboot.rb'
load '/home/papri/git_work/dqscripts/oscorpus/corpus.rb'

#@entities = {'Operating System Structure' => ["Free BSD", "System Programs", "Registry operating system", "Unix System Structure", "Layered System Structure", "Microkernel System Structure", "Hybrid operating system", "Mac OS X Structure", "Cocoa Touch", "Android Architecture", "Debugging", "Core dump", "Crash Dump", "Profiling (operating system)", "Dtrace", "Sysgen", "System boot", "Bootstrap loader", "Grub"]}

#@corpus = {}

#@entities.each do |k,v|

	@corpus['Operating System Structure'] = {}
	puts @corpus

	@entities['Operating System Structure'].each do |t|
		puts t
		@gpages = []

		Google::Search::Web.new(:query => t).each do |w|
			@gpages << [w.title,w.uri]
		end 


	whiteregex = /en.wikipedia|youtube|webopedia|techopedia|techterms|personal.kent|wikibooks|wikiversity/
	blackregex = /wikimedia|.pdf|.doc|.txt|.ppt|itunes|khanacademy|blogspot|.gif|.pps|nanamic|freevbcode|scratched|download|reddit|interactivepython.org|google|yahoo|prezi|amazon|cyclopaedia|reference|researchgate|quitebasic|download|animated|compiledreams|facebook|sciencedirect|barnesandnoble|opensourcescripts|slideshare|sriptol|scribd|sourcecode|teachingtree|stack/


	@resources = []
	@uniquelinks = []

	@gpages.each do |d,l|
		if l =~ whiteregex
			puts l
			puts "hi"
			@resources << [d,l]
			@uniquelinks << l
		end
	end

	10.times do |j|
		if !(@gpages[j][1] =~ whiteregex) and !(@gpages[j][1] =~ blackregex)
			if svm_predict(@gpages[j][1]) == 1.0
				puts @gpages[j][1]
				@resources << @gpages[j]
				@uniquelinks << @gpages[j][1]
			end
		end
	end
# Duckduckgo results extraction
	u = "https://api.duckduckgo.com/html?q="+t.gsub(/ |_/,"+")
	puts u
	@doc = Nokogiri::HTML(open(URI.encode(u)))
	x = @doc.css(".web-result-sponsored")
	x.remove
	@carrier = @doc.css("div.web-result a.large")
	@carrier.each do |c|
		pred = svm_predict(c["href"])
		if @uniquelinks.length > 13
			break
		end
		if !@uniquelinks.join.include?(c["href"].gsub(/https:\/\/|http:\/\//,"")) and !(c["href"] =~ blackregex) and pred == 1.0 
	  		puts c["href"]
			@resources << [c.text,c["href"]]			
			@uniquelinks << c["href"]
		end
	end
	@corpus['Operating System Structure'][t] = @resources

	end
#end
