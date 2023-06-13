ActiveAdmin.register User do

  permit_params :username, :email, :password_digest, :admin
  permit_params do
    permitted = [:username, :email, :password_digest, :admin]
    permitted << :other if params[:action] == 'create' && current_user.admin?
    permitted
  end
  
end
