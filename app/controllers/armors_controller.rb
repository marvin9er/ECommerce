class ArmorsController < InheritedResources::Base

  private

    def armor_params
      params.require(:armor).permit(:armor, :concealment, :speed, :dodge, :steadiness, :stamina, :description, :armorCategory)
    end

end
