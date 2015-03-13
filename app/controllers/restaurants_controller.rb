class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  # GET /restaurants
  # GET /restaurants.json
  def index
    @restaurants = Restaurant.all
  end

  # GET /restaurants/1
  # GET /restaurants/1.json
  def show
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # GET /restaurants/1/edit
  def edit
  end

  # POST /restaurants
  # POST /restaurants.json
  def create
    @restaurant = Restaurant.new(restaurant_params)

    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to @restaurant, notice: 'Your Restaurant was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant }
      else
        format.html { render :new }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurants/1
  # PATCH/PUT /restaurants/1.json
  def update
    respond_to do |format|
      if @restaurant.update(restaurant_params)
        format.html { redirect_to @restaurant, notice: 'Your Restaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant }
      else
        format.html { render :edit }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurants/1
  # DELETE /restaurants/1.json
  def destroy
    @restaurant.destroy
    respond_to do |format|
      format.html { redirect_to restaurant_path, notice: 'The Restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_params
      params.require(:restaurant).permit(:title, :description)
    end



  # before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  # respond_to :html

  # def welcome
  # end
  
  # def index
  #   @restaurants = Restaurant.all.order("created_at DESC")
  #   # @restaurants = Restaurant.all
  #   respond_with(@restaurants)
  # end

  # def show
  #   respond_with(@restaurant)
  # end

  # def new
  #   @restaurant = current_user.Restaurants.build
  #   respond_with(@restaurant)
  # end

  # def edit
  # end

  # def create
  #   @restaurant = Restaurant.new(restaurant_params)
  #   @restaurant.save
  #   respond_with(@restaurant)
  # end



  # def update
  #   @restaurant.update(restaurant_params)
  #   respond_with(@restaurant)
  # end

  # def destroy
  #   @restaurant.destroy
  #   respond_with(@restaurant)
  # end

  # private

  #   def set_restaurant
  #     @restaurant = Restaurant.find(params[:id])
  #   end

  #   def restaurant_params
  #     params.require(:restaurant).permit(:title, :description, :address, :comments)
  #   end
end
