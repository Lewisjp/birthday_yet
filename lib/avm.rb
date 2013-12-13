class AVM

	attr_accessor :id, :whatyouare

	def initialize(answers)
		@id = answers
		@whatyouare = process
		display
	end

	def process
		animal = 0
		veggie = 0
		mineral = 0

		question = id["question"]

		question.each_pair do |key, value| 
			if value == "animal"
				animal += 1
			end

			if value == "vegetable"
				vegetable += 1
			end

			if value == "mineral"
				mineral += 1
			end
		end

		if animal > veggie
			if animal > mineral
				return  "animal"
			end	
		end

		if veggie > animal
			if veggie > mineral
				return  "vegetable"
			end
		end

		if mineral > veggie
			if mineral > animal
				return  "mineral"
			end
		end

		if mineral == veggie
			if veggie == animal
				return "bit_of_all"
			else
				return  "nothing"
			end
		end	
	end


	def display
		if whatyouare.nil?
			"Nothing got recorded"
		else
			whatyouare
		end
	end

end

# test = {"question"=>{"0"=>"mineral", "1"=>"animal", "2"=>"animal"}, "splat"=>[], "captures"=>["avm"], "form_type"=>"avm"}
# show = AVM.new(test)

# puts show.inspect