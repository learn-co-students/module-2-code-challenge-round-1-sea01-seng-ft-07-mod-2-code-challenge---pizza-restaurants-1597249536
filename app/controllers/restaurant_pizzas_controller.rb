class RestaurantPizzasController < ApplicationController
    def new
        @restaurant_pizza = RestaurantPizza.new
    end

    def create
        @restaurant_pizza = RestaurantPizza.new{restaurantpizza_params}
        if @restaurant_pizza.save
            redirect_to @restaurant_pizza
        else
            flash[:errors] = @customer.errors.full_messages
            render :new
        end
    end



private
    def restaurantpizza_params
        params.require(:restaurant_pizza).permit(:price, :pizza_id, :restaurant_id)
    end


end
