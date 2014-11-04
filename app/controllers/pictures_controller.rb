class PicturesController < ApplicationController
	def index
		@pictures = [
			{ 
				:title => "The old church on the coast white sea",
				:artist => "Sergey Ershv",
				:url => "http://bitmakerlabs.s3.amazonaws.com/photogur/house.jpg"
			},
			{  	:title => "Sea Power",
				:artist => "Sthepen Scullion",
				:url => "http://bitmakerlabs.s3.amazonaws.com/photogur/wave.jpg"
			},

			{ 	:title => "Intro the Poppies",
				:artist => "Jhon Whilhelm",
				:url => "http://bitmakerlabs.s3.amazonaws.com/photogur/girl.jpg"
			}
		]
	end


def show
		@pictures = [
			{ 
				:title => "The old church on the coast white sea",
				:artist => "Sergey Ershv",
				:url => "http://bitmakerlabs.s3.amazonaws.com/photogur/house.jpg"
			},
			{  	:title => "Sea Power",
				:artist => "Sthepen Scullion",
				:url => "http://bitmakerlabs.s3.amazonaws.com/photogur/wave.jpg"
			},

			{ 	:title => "Intro the Poppies",
				:artist => "Jhon Whilhelm",
				:url => "http://bitmakerlabs.s3.amazonaws.com/photogur/girl.jpg"
			}
		]

		@picture = @pictures[params[:id].to_i]
	end

end
