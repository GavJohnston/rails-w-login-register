class ExtrasController < ApplicationController
    
   
 def create
 @user = User.find(params[:user_id])
 @extra = @user.extras.create(extra_params)
 redirect_to user_path(@user)
 end
 
def destroy
 @user = User.find(params[:user_id])
 @extra = @user.extras.find(params[:id])
 @extra.destroy
 redirect_to user_path(@user)
end 



 private
 def extra_params
 params.require(:extra).permit(:issue, :current_date, :resolution, :next_appointment, :image)
 end
end