class Array

	def new_inject(argument=0, &block)
		result = 0
		counter = 0
		if block_given? 
			acummulator = self.first if argument == 0
			acummulator = argument
			self.each do | item |
	  		acummulator = yield(acummulator, item)
	  	end
	  	return acummulator
	  else
			self.each do | item |
	  		result = item if counter == 0
	  		result = result.send(argument, self[counter]) if counter > 0
	  		counter += 1
	  	end
	  	return result
	  end
	end
end