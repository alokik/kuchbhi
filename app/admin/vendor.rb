ActiveAdmin.register Vendor do

  form do |f|
    f.inputs "Vendors" do
    f.input :name
    end

    f.has_many :vendor_areas do |va|
      va.inputs "Vendor Areas" do
      if !va.object.nil?
        # show the destroy checkbox only if it is an existing vendor_area
        # else, there's already dynamic JS to add / remove new vendor_area
        va.input :_destroy, :as => :boolean,:required => false, :label => "Destroy?"
      end
      va.input :service_area
      # it should automatically generate a drop-down select to choose from your existing patients
      end
    end
    f.actions
  end

  show do
    panel "Service Areas" do
      table_for vendor.vendor_areas do
        column "Location" do |va|
          va.service_area.location
        end
        column "City" do |va|
          va.service_area.city
        end
        column "Pincode" do |va|
          va.service_area.pincode
        end        
      end
    end
  end

  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, vendor_areas_attributes:[:id, :vendor_id, :service_area_id,'_destroy']
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
