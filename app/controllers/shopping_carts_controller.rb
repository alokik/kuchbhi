class ShoppingCartsController < ApplicationController
	before_filter :extract_shopping_cart


	def add_to_cart
		meal = Meal.find(params[:meal_id])
		vendor = Vendor.find(params[:vendor_id])
		quantity = params[:quantity]
		@shopping_cart.add(meal,10,quantity)
	    redirect_to vendor
	end


	private 
	
	def extract_shopping_cart
	    shopping_cart_id = session[:shopping_cart_id]
	    @shopping_cart = session[:shopping_cart_id] ? ShoppingCart.find(shopping_cart_id) : ShoppingCart.create
	    session[:shopping_cart_id] = @shopping_cart.id
  	end
end