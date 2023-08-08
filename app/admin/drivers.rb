ActiveAdmin.register Driver do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :email, :encrypted_password, :status
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end



  form do |f|
    f.inputs do
      f.input :email
      f.input :encrypted_password
      f.input :status
      # f.input :profile_photos, as: :file, input_html: {multiple: true}
    end
    f.actions
  end

  show do
    attributes_table do
      row :email
      row :encrypted_password
        
    end
  end            
  
end
