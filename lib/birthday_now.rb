require 'time'

class Birthday

	attr_accessor :date, :month, :day, :birthday

	def initialize(params)
		@date = params
		@month = date["birthday"]["0"].to_i
		@day = date["birthday"]["1"].to_i
		@birthday = false
		check_birthday
	end

	def birthday_video
		if birthday == true
			play = '<iframe width="420" height="315" src="//www.youtube.com/embed/xTTX1Wm1fL4" frameborder="0" allowfullscreen></iframe>'
		else
			play = '<iframe width="420" height="315" src="//www.youtube.com/embed/UBDwTGwJH00" frameborder="0" allowfullscreen></iframe>'
		end

	end

	def check_birthday
		birthday = Date.new(2013, month, day)
		today = Time.new

		if today.mon == birthday.mon
			if today.mday == birthday.mday
				@birthday = true
				birthday_video
				return "Happy Birthday!"
			else
				return "You don't need to wait for a birthday to party."
			end
		else
			return "You don't need to wait for a birthday to party."
		end
	end

	def display
#		date["birthday"]  #=> {"0"=>"12", "1"=>"19"}

	end

	def birthday_song

=begin
	
	<iframe width="420" height="315" src="//www.youtube.com/embed/xTTX1Wm1fL4" frameborder="0" allowfullscreen></iframe>

=end

	end	



end

# test = {"question"=>{"0"=>"mineral", "1"=>"animal", "2"=>"animal"}, "splat"=>[], "captures"=>["avm"], "form_type"=>"avm"}
# show = AVM.new(test)

# puts show.display