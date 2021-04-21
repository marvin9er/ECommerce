class ArmorCategoriesController < InheritedResources::Base

  private

    def armor_category_params
      params.require(:armor_category).permit(:name, :categoryId)
    end

end
