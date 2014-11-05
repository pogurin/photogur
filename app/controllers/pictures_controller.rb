class PicturesController < ApplicationController
	
	def index
		@pictures = Picture.all
	end

	def show 
		@picture = Picture.find(params[:id])
	end

	def new 
		@picture = Picture.new
	end

	def create 
		@picture = Picture.neew(picture_params)
		if @picture.save 
			redirect_to picture_url
		else
			render :new
		end
	end

	private 
	def picture_params
		params.require(:picture).permit(:artist,:title,:url)
	end

	def edit 
		@picture = Picture.find(params[:id])
	end

	def update 
		@picture = Picture.find(params[:id])

		if @picture.update_attributes(picture_params)
			redirect_to "/pictures/#{@picture.id}"
		else 
			render :edit
		end
	end

	def destroy 
		@picture = Picture.find(params[:id])
		@picture.destroy
		redirect_to pictures_url
	end
end



# class PicturesController < ApplicationController
# 	def index
# 		@pictures = [
# 			{ 
# 				:title => "The old church on the coast white sea",
# 				:artist => "Sergey Ershv",
# 				:url => "http://bitmakerlabs.s3.amazonaws.com/photogur/house.jpg"
# 			},
# 			{  	:title => "Sea Power",
# 				:artist => "Sthepen Scullion",
# 				:url => "http://bitmakerlabs.s3.amazonaws.com/photogur/wave.jpg"
# 			},

# 			{ 	:title => "Intro the Poppies",
# 				:artist => "Jhon Whilhelm",
# 				:url => "http://bitmakerlabs.s3.amazonaws.com/photogur/girl.jpg"
# 			}
# 		]
# 	end


# def show
# 		@pictures = [
# 			{ 
# 				:title => "The old church on the coast white sea",
# 				:artist => "Sergey Ershv",
# 				:url => "http://bitmakerlabs.s3.amazonaws.com/photogur/house.jpg"
# 			},
# 			{  	:title => "Sea Power",
# 				:artist => "Sthepen Scullion",
# 				:url => "http://bitmakerlabs.s3.amazonaws.com/photogur/wave.jpg"
# 			},

# 			{ 	:title => "Intro the Poppies",
# 				:artist => "Jhon Whilhelm",
# 				:url => "http://bitmakerlabs.s3.amazonaws.com/photogur/girl.jpg"
# 			}
# 		]

# 		@picture = @pictures[params[:id].to_i]
# 	end

# 	def new
# 	end

# 	def create 
# 		render :text => "Saving a picture.URL: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
# 	end
# end
