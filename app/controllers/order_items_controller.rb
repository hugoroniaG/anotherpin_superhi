class OrderItemsController < ApplicationController
	
	def create
		# find the product
		@product = Product.find_by(params[:product_id])
		# cart = @current_cart
		#quantity? - comes from form data
		@quantity = form_params[:quantity]
		
		@current_cart.order_items.create(product: @product, quantity: @quantity)
		
		redirect_to product_path(@product)
	end
	
	def form_params
		params.require(:order_item).permit(:quantity)
	end
	
end
