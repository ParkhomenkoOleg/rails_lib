ActiveAdmin.register Library do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :address, :year_of_creation, :books_id, :card_readers_id, :street_address, :city, :zip_code
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :address, :year_of_creation, :books_id, :card_readers_id, :street_address, :city, :zip_code]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
