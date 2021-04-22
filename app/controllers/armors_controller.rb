class ArmorsController < InheritedResources::Base

  include ActionView::Helpers::NumberHelper

  add_breadcrumb "Home", :root_path

  def index
    @armor_categories = ArmorCategory.all
    @filter = params[:filter]
    if @filter != nil
      @armors = Armor.where(['armorCategory_id = ?', "#{@filter.to_i}"])
    else
      @armors = Armor.all
    end
    add_breadcrumb "Armors", armors_path
  end

  def show
    @armor_categories = ArmorCategory.all
    @armor = Armor.find(params[:id])

    add_breadcrumb "Armors", armors_path
    add_breadcrumb "#{@armor.name}", "#{@armor.id}"
  end

  def search_results
    @query = params[:query]
    @category = params[:category]
    @armor_categories = ArmorCategory.all

    if @category != ""
      @armors = Armor.where(['Name LIKE ? AND armorCategory_id = ?', "%#{@query}%", "#{@category.to_i}"])
    else
      @armors = Armor.where(['Name LIKE ?', "%#{@query}%"])
    end


  end

  private

    def armor_params
      params.require(:armor).permit(:armor, :concealment, :speed, :dodge, :steadiness, :stamina, :description, :armorCategory)
    end



end
