require 'google-search'
load '/home/papri/git_work/dqscripts/svm/svm_predict.rb'
#load '/home/papri/git_work/dqscripts/oscorpus/osboot.rb'
#load '/home/papri/git_work/dqscripts/oscorpus/corpus.rb'

#@entities = {'Processes and Threads' => ["Process Control Block", "program counter", "Context Switch", "Thread (computing)", "Job queue", "Ready queue", "CPU scheduler", "Job scheduler", "Medium Term Scheduler", "Process Creation", "Process Identifier", "Process Temination", "Multiprocess Architecture", "Producer Consumer Problem", "Shared Memory", "Message Passing", "Buffering", "POSIX", "Socket", "Remote Procedure Calls", "Pipes (operating system)", "Multicore Programming", "Parallelism (computer architecture)", "Concurrent (computer architecture)", "Multithreaded Proces", "Single Threaded Process", "Amdahl's Law", "User Threads", "Kernel Threads", "Pthreads", "Thread Pool", "Grand Central Approach", "Thread-Local Storage", "Schedular Activations"]}

#@corpus = {}

#@entities.each do |k,v|

#	@corpus['Processes and Threads'] = {}
	puts @corpus

	@entities['Processes and Threads'].each do |t|
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
	@corpus['Processes and Threads'][t] = @resources

	end
#end
