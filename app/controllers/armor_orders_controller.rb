class ArmorOrdersController < InheritedResources::Base

  private

    def armor_order_params
      params.require(:armor_order).permit(:order_id, :armor_id, :price)
    end

end
