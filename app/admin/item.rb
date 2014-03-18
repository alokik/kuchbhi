ActiveAdmin.register Item do

  permit_params :name, :description
  filter :meals, :as => :select, :collection => Meal.all.collect {|o| [o.name, o.id]}

  form do |f|
    f.inputs "Details" do 
      f.input :meals, as: :check_boxes
      f.input :name
      f.input :description
    end
    f.actions
  end
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
