class PinsController < ApplicationController
	
	# before_action :set_restaurant
	# before_action :set_pin, except: [:create]

	# def create
	# 	@pin = @restaurant.pins.create(pin_params)
	# 	redirect_to @restaurant 
	# end

	# def destroy
	# 	if @pin.destroy
	# 		flash[:success] = "Pin was deleted"
	# 	else
	# 		flash[:error] = "Pin could not be deleted dude."	
	# 	end
	# 	redirect_to @restaurant	
	# end

	# def complete
	# 	@pin.update_attribute(:completed_at, Time.now)
	# 	redirect_to @restaurant, notice: "Todo item completed dude"
	# end


	# private

	# def set_restaurant 
	# 	@restaurant = TodoList.find(params[:restaurant_id])
	# end

	# def set_pin
	# 	@pin = @restaurant.pins.find(params[:id])		
	# end

	# def pin_params
	# 	params[:pin].permit(:content)
	# end





	before_action :set_restaurant

	def create
		@pin = @restaurant.pins.create(pin_params)
		redirect_to @restaurant 
	end


	private

	def set_restaurant 
		@restaurant = Restaurant.find(params[:restaurant_id])
	end

	def pin_params
		params[:pin].permit(:image, :title, :description)
	end







	# before_action :find_pin, only: [:show, :edit, :update, :destroy, :upvote]
	# before_action :authenticate_user!, except: [:index, :show]
	
	# def index
	# 	@pins = Pin.all.order("created_at DESC")
	# end

	# def show
	# end

	# def new
	# 	@pin = current_user.pins.build
	# end

	# def create
	# 	@pin = current_user.pins.build(pin_params)

	# 	if @pin.save 
	# 		redirect_to @pin, notice: "Successfully created new Pin" 
	# 	else 
	# 		render 'new'
	# 	end
	# end

	# def edit
	# end

	# def update
	# 	if @pin.update(pin_params)
	# 		redirect_to @pin, notice: "Pin was Successfully updated"
	# 	else
	# 		render 'edit'
	# 	end
	# end

	# def destroy
	# 	@pin.destroy
	# 	redirect_to root_path
	# end

	# def upvote
	# 	@pin.upvote_by current_user
	# 	redirect_to :back
	# end   


	# private

	# def pin_params
	# 	params.require(:pin).permit(:title, :description, :image)
	# end

	# def find_pin
	# 	@pin = Pin.find(params[:id])
	# end
end
