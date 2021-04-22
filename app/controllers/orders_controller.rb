class OrdersController < InheritedResources::Base

  private

    def order_params
      params.require(:order).permit(:user, :dateOrdered, :price, :categoryid)
    end

end
