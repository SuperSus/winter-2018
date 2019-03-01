class RegistrationsController < Devise::RegistrationsController
    private
  
    def sign_up_params
      params.require(:user).permit(:first_name, :last_name, :email, :age, :weight, :height,  :password, :password_confirmation)
    end
  
    def account_update_params
        binding.pry
        params.require(:user).permit(:first_name, :last_name, :email, :age, :weight, :height, :password, :password_confirmation, :current_password)
    end
end