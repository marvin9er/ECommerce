class PagesController < ApplicationController
  def home
    @armor_categories = ArmorCategory.all
    @armors = Armor.all
  end

  def about
    @armor_categories = ArmorCategory.all
    @about = About.first
  end

  def contact
    @armor_categories = ArmorCategory.all
    @contacts = Contact.all
  end
end