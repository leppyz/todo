class ListsController<ApplicationController
	# def index
		
	# end

	def newtodo
		
	end

	def create
		@list=List.new(params[:newtodo])
		@list.save
		
	end

	def show
		render 'newtodo'
	end

	def delete
		
	end

	def reorder_up
		
	end

	def reorder_down

	end

	def done
		
	end

	def undone
		
	end

end