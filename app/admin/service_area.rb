ActiveAdmin.register ServiceArea do

  permit_params :location, :pincode, :city, :vendor_id
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :location, :pincode, :city, vendor_area: [:id,:vendor_id, :service_area_id]
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted []
  # end
  
end
